.class public Landroid/appwidget/AppWidgetHostView;
.super Landroid/widget/FrameLayout;
.source "AppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHostView$ViewApplyListener;
    }
.end annotation


# static fields
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

.field private blacklist mColorMapping:Landroid/util/SparseIntArray;

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

.field greylist mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private blacklist mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private blacklist mIsForcedOrientation:Z

.field private blacklist mIsPortrait:Z

.field private blacklist mLastConfig:Landroid/content/res/Configuration;

.field private greylist-max-o mLastExecutionSignal:Landroid/os/CancellationSignal;

.field private blacklist mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

.field private blacklist mLastInflatedRemoteViewsId:J

.field blacklist mLastViewIdToDataChanged:I

.field private blacklist mOnLightBackground:Z

.field greylist-max-o mRemoteContext:Landroid/content/Context;

.field greylist-max-o mView:Landroid/view/View;

.field greylist-max-o mViewMode:I


# direct methods
.method public static synthetic blacklist $r8$lambda$wkvus0S1Q320lI4MfL4EhtUn5Hk(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onDefaultViewClicked(Landroid/view/View;)V

    return-void
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

    .line 105
    new-instance v0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHostView;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 146
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    .line 147
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animationIn"    # I
    .param p3, "animationOut"    # I

    .line 166
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 118
    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    .line 122
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 123
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMapping:Landroid/util/SparseIntArray;

    .line 125
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    .line 126
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastViewIdToDataChanged:I

    .line 167
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setIsRootNamespace(Z)V

    .line 171
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 153
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    .line 154
    invoke-direct {p0, p2}, Landroid/appwidget/AppWidgetHostView;->getHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 155
    return-void
.end method

.method private greylist-max-o applyContent(Landroid/view/View;ZLjava/lang/Exception;)V
    .locals 3
    .param p1, "content"    # Landroid/view/View;
    .param p2, "recycled"    # Z
    .param p3, "exception"    # Ljava/lang/Exception;

    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    .line 640
    if-nez p1, :cond_2

    .line 641
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 643
    return-void

    .line 645
    :cond_0
    if-eqz p3, :cond_1

    .line 646
    const-string v0, "AppWidgetHostView"

    const-string v2, "Error inflating RemoteViews"

    invoke-static {v0, v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object p1

    .line 649
    iput v1, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 652
    :cond_2
    if-nez p2, :cond_3

    .line 653
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    .line 654
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V

    .line 657
    :cond_3
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    if-eq v0, p1, :cond_4

    .line 658
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->removeView(Landroid/view/View;)V

    .line 659
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    .line 661
    :cond_4
    return-void
.end method

.method private blacklist clearResourcePackageCache(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 851
    :try_start_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    .line 852
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    move-object p1, v0

    .line 855
    :cond_0
    const-string v0, "android.app.ContextImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "mMainThread"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 856
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 857
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 859
    .local v2, "mtObject":Ljava/lang/Object;
    const-class v3, Landroid/app/ActivityThread;

    const-string/jumbo v4, "mResourcesManager"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v0, v3

    .line 860
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 861
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 863
    .local v3, "lockObject":Ljava/lang/Object;
    const-class v4, Landroid/app/ActivityThread;

    const-string/jumbo v5, "mResourcePackages"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v0, v4

    .line 864
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 865
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 868
    .local v4, "rpObject":Ljava/lang/Object;
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :try_start_1
    move-object v5, v4

    check-cast v5, Landroid/util/ArrayMap;

    .line 870
    .local v5, "resourcePackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<**>;"
    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    nop

    .end local v5    # "resourcePackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<**>;"
    monitor-exit v3

    .line 877
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "mtObject":Ljava/lang/Object;
    .end local v3    # "lockObject":Ljava/lang/Object;
    .end local v4    # "rpObject":Ljava/lang/Object;
    nop

    .line 879
    return v1

    .line 871
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "mtObject":Ljava/lang/Object;
    .restart local v3    # "lockObject":Ljava/lang/Object;
    .restart local v4    # "rpObject":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/appwidget/AppWidgetHostView;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "pkg":Ljava/lang/String;
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

    .line 872
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "mtObject":Ljava/lang/Object;
    .end local v3    # "lockObject":Ljava/lang/Object;
    .end local v4    # "rpObject":Ljava/lang/Object;
    .restart local p0    # "this":Landroid/appwidget/AppWidgetHostView;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Ljava/lang/Exception;
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

    .line 876
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist computeSizeFromLayout(IIII)Landroid/util/SizeF;
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 313
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 314
    .local v0, "density":F
    new-instance v1, Landroid/util/SizeF;

    sub-int v2, p3, p1

    .line 315
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v0

    sub-int v3, p4, p2

    .line 316
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-direct {v1, v2, v3}, Landroid/util/SizeF;-><init>(FF)V

    .line 314
    return-object v1
.end method

.method private greylist-max-o generateId()I
    .locals 2

    .line 273
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getId()I

    move-result v0

    .line 274
    .local v0, "id":I
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

    .line 249
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .line 227
    invoke-static {p0, p2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDefaultPaddingForWidget(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 231
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 232
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v1

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 236
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 237
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x1050126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 239
    const v1, 0x1050127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 241
    const v1, 0x1050128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 243
    const v1, 0x1050125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 245
    return-object p1
.end method

.method private blacklist getHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$InteractionHandler;
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 1021
    new-instance v0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-object v0
.end method

.method private greylist-max-o inflateAsync(Landroid/widget/RemoteViews;)V
    .locals 11
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .line 666
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 667
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    .line 669
    .local v0, "layoutId":I
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 675
    :cond_0
    iget-boolean v1, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/appwidget/AppWidgetHostView;->mConfigChanged:Z

    if-nez v1, :cond_1

    .line 677
    :try_start_0
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    const/4 v1, 0x1

    invoke-direct {v6, p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    goto :goto_0

    .line 684
    :catch_0
    move-exception v1

    .line 688
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 689
    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    invoke-direct {v7, p0, p1, v0, v2}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v3, p1

    move-object v5, p0

    invoke-virtual/range {v3 .. v10}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    .line 698
    :cond_2
    iput-boolean v2, p0, Landroid/appwidget/AppWidgetHostView;->mConfigChanged:Z

    .line 700
    return-void
.end method

.method private blacklist isSameColorMapping(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z
    .locals 4
    .param p1, "oldColors"    # Landroid/util/SparseIntArray;
    .param p2, "newColors"    # Landroid/util/SparseIntArray;

    .line 1057
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1058
    return v2

    .line 1060
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1061
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 1062
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_1

    .line 1060
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1063
    :cond_2
    :goto_1
    return v2

    .line 1066
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 106
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private blacklist onDefaultViewClicked(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 955
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 957
    .local v0, "launcherApps":Landroid/content/pm/LauncherApps;
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 958
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    .line 957
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 959
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 960
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 961
    .local v2, "ai":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 962
    invoke-static {p1}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    .line 961
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 965
    .end local v0    # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v1    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v2    # "ai":Landroid/content/pm/LauncherActivityInfo;
    :cond_0
    return-void
.end method

.method private blacklist reapplyLastRemoteViews()V
    .locals 3

    .line 554
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 555
    .local v0, "savedState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 556
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    .line 557
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 558
    return-void
.end method


# virtual methods
.method protected greylist-max-o applyRemoteViews(Landroid/widget/RemoteViews;Z)V
    .locals 10
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "useAsyncIfPossible"    # Z

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "recycled":Z
    const/4 v1, 0x0

    .line 566
    .local v1, "content":Landroid/view/View;
    const/4 v2, 0x0

    .line 569
    .local v2, "exception":Ljava/lang/Exception;
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    .line 571
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v3, :cond_0

    .line 572
    invoke-virtual {v3}, Landroid/os/CancellationSignal;->cancel()V

    .line 573
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    .line 576
    :cond_0
    if-nez p1, :cond_2

    .line 577
    iget v3, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 579
    return-void

    .line 581
    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object v1

    .line 582
    iput v4, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    goto/16 :goto_2

    .line 585
    :cond_2
    iget-boolean v3, p0, Landroid/appwidget/AppWidgetHostView;->mIsForcedOrientation:Z

    if-eqz v3, :cond_3

    .line 586
    iget-boolean v3, p0, Landroid/appwidget/AppWidgetHostView;->mIsPortrait:Z

    invoke-virtual {p1, v3}, Landroid/widget/RemoteViews;->setOrientation(Z)V

    .line 591
    :cond_3
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 592
    .local v3, "rvToApply":Landroid/widget/RemoteViews;
    iget-boolean v4, p0, Landroid/appwidget/AppWidgetHostView;->mOnLightBackground:Z

    if-eqz v4, :cond_4

    .line 593
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getDarkTextViews()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 596
    :cond_4
    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    if-eqz v4, :cond_5

    if-eqz p2, :cond_5

    .line 597
    invoke-direct {p0, v3}, Landroid/appwidget/AppWidgetHostView;->inflateAsync(Landroid/widget/RemoteViews;)V

    .line 598
    return-void

    .line 602
    :cond_5
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 603
    iget-boolean v4, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Landroid/appwidget/AppWidgetHostView;->mConfigChanged:Z

    if-nez v4, :cond_6

    .line 605
    :try_start_0
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V

    .line 607
    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    move-object v1, v4

    .line 608
    invoke-virtual {v3, p1}, Landroid/widget/RemoteViews;->computeUniqueId(Landroid/widget/RemoteViews;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    const/4 v0, 0x1

    .line 613
    goto :goto_0

    .line 611
    :catch_0
    move-exception v4

    .line 612
    .local v4, "e":Ljava/lang/RuntimeException;
    move-object v2, v4

    .line 617
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_6
    :goto_0
    if-nez v1, :cond_7

    .line 619
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

    .line 621
    invoke-virtual {v3, p1}, Landroid/widget/RemoteViews;->computeUniqueId(Landroid/widget/RemoteViews;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 625
    goto :goto_1

    .line 623
    :catch_1
    move-exception v4

    .line 624
    .restart local v4    # "e":Ljava/lang/RuntimeException;
    move-object v2, v4

    .line 629
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_7
    :goto_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/appwidget/AppWidgetHostView;->mConfigChanged:Z

    .line 632
    const/4 v4, 0x1

    iput v4, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 635
    .end local v3    # "rvToApply":Landroid/widget/RemoteViews;
    :goto_2
    invoke-direct {p0, v1, v0, v2}, Landroid/appwidget/AppWidgetHostView;->applyContent(Landroid/view/View;ZLjava/lang/Exception;)V

    .line 636
    return-void
.end method

.method public blacklist createSharedElementActivityOptions([I[Ljava/lang/String;Landroid/content/Intent;)Landroid/app/ActivityOptions;
    .locals 8
    .param p1, "sharedViewIds"    # [I
    .param p2, "sharedViewNames"    # [Ljava/lang/String;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .line 988
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 989
    .local v0, "parentContext":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 991
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 993
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 994
    return-object v2

    .line 997
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 998
    .local v1, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1000
    .local v3, "extras":Landroid/os/Bundle;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_3

    .line 1001
    aget v5, p1, v4

    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1002
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1003
    aget-object v6, p2, v4

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    aget-object v6, p2, v4

    invoke-static {v5}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1000
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1009
    .end local v4    # "i":I
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1010
    const-string v2, "android.widget.extra.SHARED_ELEMENT_BOUNDS"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1011
    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    .line 1013
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/util/Pair;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/util/Pair;

    .line 1011
    invoke-static {v2, v4}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 1014
    .local v2, "opts":Landroid/app/ActivityOptions;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    .line 1015
    return-object v2

    .line 1017
    .end local v2    # "opts":Landroid/app/ActivityOptions;
    :cond_4
    return-object v2
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

    .line 279
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 281
    .local v0, "parcelable":Landroid/os/Parcelable;
    const/4 v1, 0x0

    .line 282
    .local v1, "jail":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const-wide/16 v2, -0x1

    .line 283
    .local v2, "inflationId":J
    instance-of v4, v0, Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 284
    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    .line 285
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "jail"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 286
    const-wide/16 v5, -0x1

    const-string v7, "inflation_id"

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 289
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_0
    if-nez v1, :cond_1

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v4

    .line 291
    :cond_1
    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredState:Landroid/util/SparseArray;

    .line 292
    iput-wide v2, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredInflationId:J

    .line 293
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->restoreInstanceState()V

    .line 294
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

    .line 262
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 263
    .local v0, "jail":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 265
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "jail"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 267
    iget-wide v2, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    const-string v4, "inflation_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 268
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 269
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    return-void
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 490
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    .line 491
    .local v0, "context":Landroid/content/Context;
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v1
.end method

.method public whitelist getAppWidgetId()I
    .locals 1

    .line 253
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    return v0
.end method

.method public whitelist getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    .line 257
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method protected whitelist getDefaultView()Landroid/view/View;
    .locals 11

    .line 906
    const-string v0, "appWidgetCategory"

    const-string v1, "AppWidgetHostView"

    const/4 v2, 0x0

    .line 907
    .local v2, "defaultView":Landroid/view/View;
    const/4 v3, 0x0

    .line 910
    .local v3, "exception":Ljava/lang/Exception;
    :try_start_0
    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v4, :cond_3

    .line 911
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;

    move-result-object v4

    .line 912
    .local v4, "theirContext":Landroid/content/Context;
    iput-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 913
    const-string v5, "layout_inflater"

    .line 914
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 915
    .local v5, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v5, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    move-object v5, v6

    .line 916
    sget-object v6, Landroid/appwidget/AppWidgetHostView;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {v5, v6}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 917
    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    .line 918
    .local v6, "manager":Landroid/appwidget/AppWidgetManager;
    iget v7, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v7

    .line 920
    .local v7, "options":Landroid/os/Bundle;
    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 921
    .local v8, "layoutId":I
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 922
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 923
    .local v0, "category":I
    const/4 v9, 0x2

    if-ne v0, v9, :cond_1

    .line 924
    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 927
    .local v9, "kgLayoutId":I
    if-nez v9, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    move v8, v10

    .line 930
    .end local v0    # "category":I
    .end local v9    # "kgLayoutId":I
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v5, v8, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    .line 931
    instance-of v0, v2, Landroid/widget/AdapterView;

    if-nez v0, :cond_2

    .line 933
    new-instance v0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda1;-><init>(Landroid/appwidget/AppWidgetHostView;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    .end local v4    # "theirContext":Landroid/content/Context;
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v7    # "options":Landroid/os/Bundle;
    .end local v8    # "layoutId":I
    :cond_2
    goto :goto_1

    .line 936
    :cond_3
    const-string v0, "can\'t inflate defaultView because mInfo is missing"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    :goto_1
    goto :goto_2

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v3, v0

    .line 942
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2
    if-eqz v3, :cond_4

    .line 943
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

    .line 946
    :cond_4
    if-nez v2, :cond_5

    .line 948
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v2

    .line 951
    :cond_5
    return-object v2
.end method

.method protected whitelist getErrorView()Landroid/view/View;
    .locals 3

    .line 971
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 972
    .local v0, "tv":Landroid/widget/TextView;
    const v1, 0x1040572

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 974
    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 975
    return-object v0
.end method

.method protected blacklist getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;
    .locals 9

    .line 787
    const-string v0, " not found"

    const-string v1, "Package name "

    const-string v2, "AppWidgetHostView"

    const/4 v3, 0x0

    .line 790
    .local v3, "retry":Z
    const/4 v4, 0x4

    :try_start_0
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 791
    .local v5, "expectedAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {v5}, Landroid/app/LoadedApk;->checkAndUpdateApkPaths(Landroid/content/pm/ApplicationInfo;)V

    .line 793
    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v6

    .line 796
    .local v6, "newContext":Landroid/content/Context;
    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-eqz v7, :cond_0

    .line 797
    invoke-virtual {v7, v6}, Landroid/widget/RemoteViews$ColorResources;->apply(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :cond_0
    return-object v6

    .line 808
    .end local v5    # "expectedAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "newContext":Landroid/content/Context;
    :catch_0
    move-exception v5

    .line 809
    .local v5, "e":Landroid/content/res/Resources$NotFoundException;
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

    .line 811
    const/4 v3, 0x1

    .line 817
    .end local v5    # "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz v3, :cond_2

    .line 818
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 821
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v5}, Landroid/appwidget/AppWidgetHostView;->clearResourcePackageCache(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 822
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v0

    .line 826
    :cond_1
    const/4 v6, 0x0

    .line 828
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
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

    .line 832
    nop

    .line 837
    :try_start_2
    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6, v4}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 838
    :catch_1
    move-exception v4

    .line 839
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
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

    .line 840
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v0

    .line 829
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v4

    .line 830
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
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

    .line 831
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v0

    .line 844
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v0

    .line 803
    :catch_3
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "Error trying to create the remote context."

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 805
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v1

    .line 800
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v4

    .line 801
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
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

    .line 802
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method synthetic blacklist lambda$getHandler$1$android-appwidget-AppWidgetHostView(Landroid/widget/RemoteViews$InteractionHandler;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 2
    .param p1, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 1022
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->noteAppWidgetTapped(I)V

    .line 1023
    if-eqz p1, :cond_0

    .line 1024
    invoke-interface {p1, p2, p3, p4}, Landroid/widget/RemoteViews$InteractionHandler;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result v0

    return v0

    .line 1026
    :cond_0
    nop

    .line 1027
    invoke-virtual {p4, p2}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    .line 1026
    invoke-static {p2, p3, v0}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1115
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1116
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastConfig:Landroid/content/res/Configuration;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1117
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastConfig:Landroid/content/res/Configuration;

    .line 1118
    iput-boolean v1, p0, Landroid/appwidget/AppWidgetHostView;->mConfigChanged:Z

    goto :goto_0

    .line 1119
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1120
    return-void

    .line 1122
    :cond_1
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastConfig:Landroid/content/res/Configuration;

    .line 1123
    iput-boolean v1, p0, Landroid/appwidget/AppWidgetHostView;->mConfigChanged:Z

    .line 1125
    :goto_0
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 981
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 982
    const-class v0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 983
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 16
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object/from16 v7, p0

    .line 323
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, v7, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 324
    .local v0, "oldSize":Landroid/util/SizeF;
    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    :try_start_1
    invoke-direct {v7, v10, v11, v12, v13}, Landroid/appwidget/AppWidgetHostView;->computeSizeFromLayout(IIII)Landroid/util/SizeF;

    move-result-object v1

    move-object v14, v1

    .line 325
    .local v14, "newSize":Landroid/util/SizeF;
    iput-object v14, v7, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    .line 326
    iget-object v1, v7, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {v1, v0, v14}, Landroid/widget/RemoteViews;->getRemoteViewsToApplyIfDifferent(Landroid/util/SizeF;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v1

    move-object v15, v1

    .line 329
    .local v15, "toApply":Landroid/widget/RemoteViews;
    if-eqz v15, :cond_0

    .line 330
    invoke-virtual {v7, v15, v9}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    .line 331
    iget-object v2, v7, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    .line 334
    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v6, 0x0

    .line 331
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/appwidget/AppWidgetHostView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 338
    .end local v15    # "toApply":Landroid/widget/RemoteViews;
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 351
    .end local v0    # "oldSize":Landroid/util/SizeF;
    .end local v14    # "newSize":Landroid/util/SizeF;
    goto :goto_1

    .line 339
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    .line 340
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    const-string v1, "AppWidgetHostView"

    const-string v2, "Remote provider threw runtime exception, using error view instead."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    iget-object v1, v7, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/appwidget/AppWidgetHostView;->removeViewInLayout(Landroid/view/View;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v1

    .line 343
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v7, v1}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    .line 344
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v1, v9, v2}, Landroid/appwidget/AppWidgetHostView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 346
    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 345
    invoke-virtual {v7, v1, v2, v3}, Landroid/appwidget/AppWidgetHostView;->measureChild(Landroid/view/View;II)V

    .line 347
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, v7, Landroid/appwidget/AppWidgetHostView;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, v7, Landroid/appwidget/AppWidgetHostView;->mPaddingRight:I

    add-int/2addr v2, v3

    .line 348
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v7, Landroid/appwidget/AppWidgetHostView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, v7, Landroid/appwidget/AppWidgetHostView;->mPaddingBottom:I

    add-int/2addr v3, v4

    .line 347
    invoke-virtual {v1, v9, v9, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 349
    iput-object v1, v7, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    .line 350
    const/4 v2, 0x2

    iput v2, v7, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 352
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "child":Landroid/view/View;
    :goto_1
    return-void
.end method

.method protected whitelist prepareView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 889
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 890
    .local v0, "requested":Landroid/widget/FrameLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 891
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 895
    :cond_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 896
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    return-void
.end method

.method greylist-max-o resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 524
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {p0, v0, p1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 525
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 526
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 527
    return-void
.end method

.method public whitelist resetColorResources()V
    .locals 1

    .line 1077
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-eqz v0, :cond_0

    .line 1078
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 1079
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMapping:Landroid/util/SparseIntArray;

    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    .line 1081
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 1082
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->reapplyLastRemoteViews()V

    .line 1084
    :cond_0
    return-void
.end method

.method blacklist restoreInstanceState()V
    .locals 7

    .line 297
    iget-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredInflationId:J

    .line 298
    .local v0, "inflationId":J
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredState:Landroid/util/SparseArray;

    .line 299
    .local v2, "state":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    iget-wide v5, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 302
    :cond_0
    iput-wide v3, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredInflationId:J

    .line 303
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredState:Landroid/util/SparseArray;

    .line 305
    :try_start_0
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    goto :goto_1

    .line 306
    :catch_0
    move-exception v3

    .line 307
    .local v3, "e":Ljava/lang/Exception;
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

    .line 308
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

    .line 307
    const-string v5, "AppWidgetHostView"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 300
    :cond_2
    :goto_2
    return-void
.end method

.method public blacklist semDispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1090
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1091
    const/4 v0, 0x1

    return v0

    .line 1093
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->semDispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist semForceOrientation(ZZ)V
    .locals 2
    .param p1, "forced"    # Z
    .param p2, "isPortrait"    # Z

    .line 1105
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

    .line 1106
    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView;->mIsForcedOrientation:Z

    .line 1107
    if-eqz p1, :cond_0

    .line 1108
    iput-boolean p2, p0, Landroid/appwidget/AppWidgetHostView;->mIsPortrait:Z

    .line 1110
    :cond_0
    return-void
.end method

.method public whitelist setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 6
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 190
    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .line 191
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 194
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 195
    .local v0, "padding":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 199
    if-eqz p2, :cond_1

    .line 200
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "description":Ljava/lang/String;
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 202
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040de6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 205
    :cond_0
    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 207
    .end local v1    # "description":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public whitelist setColorResources(Landroid/util/SparseIntArray;)V
    .locals 2
    .param p1, "colorMapping"    # Landroid/util/SparseIntArray;

    .line 1045
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMapping:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Landroid/appwidget/AppWidgetHostView;->isSameColorMapping(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    return-void

    .line 1048
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMapping:Landroid/util/SparseIntArray;

    .line 1049
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/widget/RemoteViews$ColorResources;->create(Landroid/content/Context;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews$ColorResources;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 1050
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    .line 1051
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 1052
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->reapplyLastRemoteViews()V

    .line 1053
    return-void
.end method

.method public whitelist setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 502
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    .line 507
    :cond_0
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    .line 508
    return-void
.end method

.method public blacklist setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 181
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->getHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 182
    return-void
.end method

.method public whitelist setOnLightBackground(Z)V
    .locals 0
    .param p1, "onLightBackground"    # Z

    .line 516
    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView;->mOnLightBackground:Z

    .line 517
    return-void
.end method

.method public whitelist updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .line 534
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    .line 535
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    .line 537
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_0

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

    .line 538
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/SemDualAppManager;->drawDualAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V

    .line 543
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_1

    .line 544
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

    .line 545
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->drawKnoxAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V

    .line 548
    :cond_1
    return-void
.end method

.method public whitelist updateAppWidgetOptions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .line 481
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 482
    return-void
.end method

.method public whitelist updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 7
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    .line 374
    return-void
.end method

.method public greylist-max-r updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V
    .locals 17
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I
    .param p6, "ignorePadding"    # Z

    .line 435
    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 436
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .end local p1    # "newOptions":Landroid/os/Bundle;
    .local v1, "newOptions":Landroid/os/Bundle;
    goto :goto_0

    .line 435
    .end local v1    # "newOptions":Landroid/os/Bundle;
    .restart local p1    # "newOptions":Landroid/os/Bundle;
    :cond_0
    move-object/from16 v1, p1

    .line 439
    .end local p1    # "newOptions":Landroid/os/Bundle;
    .restart local v1    # "newOptions":Landroid/os/Bundle;
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v2

    .line 440
    .local v2, "padding":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 442
    .local v3, "density":F
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    .line 443
    .local v4, "xPaddingDips":I
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-int v5, v5

    .line 445
    .local v5, "yPaddingDips":I
    const/4 v6, 0x0

    if-eqz p6, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    sub-int v7, p2, v7

    .line 446
    .local v7, "newMinWidth":I
    if-eqz p6, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    move v8, v5

    :goto_2
    sub-int v8, p3, v8

    .line 447
    .local v8, "newMinHeight":I
    if-eqz p6, :cond_3

    move v9, v6

    goto :goto_3

    :cond_3
    move v9, v4

    :goto_3
    sub-int v9, p4, v9

    .line 448
    .local v9, "newMaxWidth":I
    if-eqz p6, :cond_4

    goto :goto_4

    :cond_4
    move v6, v5

    :goto_4
    sub-int v6, p5, v6

    .line 450
    .local v6, "newMaxHeight":I
    iget-object v10, v0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    .line 453
    .local v10, "widgetManager":Landroid/appwidget/AppWidgetManager;
    iget v11, v0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v10, v11}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v11

    .line 454
    .local v11, "oldOptions":Landroid/os/Bundle;
    const/4 v12, 0x0

    .line 455
    .local v12, "needsUpdate":Z
    const-string v13, "appWidgetMinWidth"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "appWidgetMaxHeight"

    move-object/from16 p1, v2

    .end local v2    # "padding":Landroid/graphics/Rect;
    .local p1, "padding":Landroid/graphics/Rect;
    const-string v2, "appWidgetMaxWidth"

    move/from16 v16, v3

    .end local v3    # "density":F
    .local v16, "density":F
    const-string v3, "appWidgetMinHeight"

    if-ne v7, v14, :cond_5

    .line 456
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v8, v14, :cond_5

    .line 457
    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v9, v14, :cond_5

    .line 458
    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    if-eq v6, v14, :cond_6

    .line 459
    :cond_5
    const/4 v12, 0x1

    .line 462
    :cond_6
    if-eqz v12, :cond_7

    .line 463
    invoke-virtual {v1, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 466
    invoke-virtual {v1, v15, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "appWidgetSizes"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 469
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 471
    :cond_7
    return-void
.end method

.method public whitelist updateAppWidgetSize(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 19
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;)V"
        }
    .end annotation

    .line 392
    .local p2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/SizeF;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 394
    .local v1, "widgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-direct/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v2

    .line 395
    .local v2, "padding":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 397
    .local v3, "density":F
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 398
    .local v4, "xPaddingDips":F
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 400
    .local v5, "yPaddingDips":F
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 401
    .local v6, "paddedSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/SizeF;>;"
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 402
    .local v7, "minWidth":F
    const/4 v8, 0x0

    .line 403
    .local v8, "maxWidth":F
    const v9, 0x7f7fffff    # Float.MAX_VALUE

    .line 404
    .local v9, "minHeight":F
    const/4 v10, 0x0

    .line 405
    .local v10, "maxHeight":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_0

    .line 406
    move-object/from16 v12, p2

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SizeF;

    .line 407
    .local v13, "size":Landroid/util/SizeF;
    new-instance v14, Landroid/util/SizeF;

    invoke-virtual {v13}, Landroid/util/SizeF;->getWidth()F

    move-result v15

    sub-float/2addr v15, v4

    move-object/from16 v16, v2

    .end local v2    # "padding":Landroid/graphics/Rect;
    .local v16, "padding":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 408
    invoke-virtual {v13}, Landroid/util/SizeF;->getHeight()F

    move-result v17

    move/from16 v18, v3

    .end local v3    # "density":F
    .local v18, "density":F
    sub-float v3, v17, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {v14, v15, v2}, Landroid/util/SizeF;-><init>(FF)V

    move-object v2, v14

    .line 409
    .local v2, "paddedSize":Landroid/util/SizeF;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 411
    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 412
    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 413
    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 405
    .end local v2    # "paddedSize":Landroid/util/SizeF;
    .end local v13    # "size":Landroid/util/SizeF;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    move/from16 v3, v18

    goto :goto_0

    .end local v16    # "padding":Landroid/graphics/Rect;
    .end local v18    # "density":F
    .local v2, "padding":Landroid/graphics/Rect;
    .restart local v3    # "density":F
    :cond_0
    move-object/from16 v12, p2

    move-object/from16 v16, v2

    move/from16 v18, v3

    .line 415
    .end local v2    # "padding":Landroid/graphics/Rect;
    .end local v3    # "density":F
    .end local v11    # "i":I
    .restart local v16    # "padding":Landroid/graphics/Rect;
    .restart local v18    # "density":F
    iget v2, v0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .line 416
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appWidgetSizes"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 415
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    return-void

    .line 420
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v2

    .line 421
    .local v2, "options":Landroid/os/Bundle;
    float-to-int v11, v7

    const-string v13, "appWidgetMinWidth"

    invoke-virtual {v2, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    float-to-int v11, v9

    const-string v13, "appWidgetMinHeight"

    invoke-virtual {v2, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    float-to-int v11, v8

    const-string v13, "appWidgetMaxWidth"

    invoke-virtual {v2, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    float-to-int v11, v10

    const-string v13, "appWidgetMaxHeight"

    invoke-virtual {v2, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 426
    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 427
    return-void
.end method

.method greylist-max-o viewDataChanged(I)V
    .locals 4
    .param p1, "viewId"    # I

    .line 758
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 759
    .local v0, "v":Landroid/view/View;
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

    .line 760
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_2

    .line 761
    move-object v1, v0

    check-cast v1, Landroid/widget/AdapterView;

    .line 762
    .local v1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 763
    .local v2, "adapter":Landroid/widget/Adapter;
    instance-of v3, v2, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_0

    .line 764
    move-object v3, v2

    check-cast v3, Landroid/widget/BaseAdapter;

    .line 765
    .local v3, "baseAdapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .end local v3    # "baseAdapter":Landroid/widget/BaseAdapter;
    goto :goto_0

    .line 766
    :cond_0
    if-nez v2, :cond_1

    instance-of v3, v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v3, :cond_1

    .line 770
    move-object v3, v1

    check-cast v3, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    invoke-interface {v3}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->deferNotifyDataSetChanged()V

    goto :goto_1

    .line 766
    :cond_1
    :goto_0
    nop

    .line 773
    :goto_1
    const/4 v3, -0x1

    iput v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastViewIdToDataChanged:I

    .line 774
    .end local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local v2    # "adapter":Landroid/widget/Adapter;
    goto :goto_2

    .line 775
    :cond_2
    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastViewIdToDataChanged:I

    .line 776
    const-string/jumbo v1, "view is null, will retry when view inflating is finished."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :goto_2
    return-void
.end method
