.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$semSetBlurInfoAction;,
        Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;,
        Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;,
        Landroid/widget/RemoteViews$SemSetOnLongClickDragable;,
        Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;,
        Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;,
        Landroid/widget/RemoteViews$AddOuterGlowAction;,
        Landroid/widget/RemoteViews$AddLinearGradientAction;,
        Landroid/widget/RemoteViews$AddStrokeAction;,
        Landroid/widget/RemoteViews$AddInnerShadowAction;,
        Landroid/widget/RemoteViews$AddOuterShadowAction;,
        Landroid/widget/RemoteViews$ClearAllTextEffectAction;,
        Landroid/widget/RemoteViews$HierarchyRootData;,
        Landroid/widget/RemoteViews$RemoteCollectionItems;,
        Landroid/widget/RemoteViews$RemoteResponse;,
        Landroid/widget/RemoteViews$ViewTree;,
        Landroid/widget/RemoteViews$ColorResources;,
        Landroid/widget/RemoteViews$AsyncApplyTask;,
        Landroid/widget/RemoteViews$OnViewAppliedListener;,
        Landroid/widget/RemoteViews$RemoteViewOutlineProvider;,
        Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;,
        Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;,
        Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;,
        Landroid/widget/RemoteViews$SetIntTagAction;,
        Landroid/widget/RemoteViews$OverrideTextColorsAction;,
        Landroid/widget/RemoteViews$SetRemoteInputsAction;,
        Landroid/widget/RemoteViews$LayoutParamAction;,
        Landroid/widget/RemoteViews$ViewPaddingAction;,
        Landroid/widget/RemoteViews$TextViewSizeAction;,
        Landroid/widget/RemoteViews$TextViewDrawableAction;,
        Landroid/widget/RemoteViews$RemoveFromParentAction;,
        Landroid/widget/RemoteViews$ViewGroupActionRemove;,
        Landroid/widget/RemoteViews$ViewGroupActionAdd;,
        Landroid/widget/RemoteViews$RunnableAction;,
        Landroid/widget/RemoteViews$NightModeReflectionAction;,
        Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;,
        Landroid/widget/RemoteViews$AttributeReflectionAction;,
        Landroid/widget/RemoteViews$ResourceReflectionAction;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$BaseReflectionAction;,
        Landroid/widget/RemoteViews$BitmapReflectionAction;,
        Landroid/widget/RemoteViews$BitmapCache;,
        Landroid/widget/RemoteViews$ViewContentNavigation;,
        Landroid/widget/RemoteViews$SetRippleDrawableColor;,
        Landroid/widget/RemoteViews$SetDrawableTint;,
        Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;,
        Landroid/widget/RemoteViews$SetOnClickResponse;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;,
        Landroid/widget/RemoteViews$ApplicationInfoCache;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;,
        Landroid/widget/RemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/RemoteViews$SetEmptyView;,
        Landroid/widget/RemoteViews$RemoteViewsContextWrapper;,
        Landroid/widget/RemoteViews$RuntimeAction;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$InteractionHandler;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$RemoteView;,
        Landroid/widget/RemoteViews$MethodArgs;,
        Landroid/widget/RemoteViews$MethodKey;,
        Landroid/widget/RemoteViews$ApplyFlags;,
        Landroid/widget/RemoteViews$ValueType;,
        Landroid/widget/RemoteViews$MarginType;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_NOOP:Landroid/widget/RemoteViews$Action;

.field private static final blacklist ALTERNATIVE_DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

.field private static final blacklist ATTRIBUTE_REFLECTION_ACTION_TAG:I = 0x20

.field private static final greylist-max-o BITMAP_REFLECTION_ACTION_TAG:I = 0xc

.field private static final blacklist COMPLEX_UNIT_DIMENSION_REFLECTION_ACTION_TAG:I = 0x19

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

.field public static final whitelist EXTRA_CHECKED:Ljava/lang/String; = "android.widget.extra.CHECKED"

.field static final greylist-max-o EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"

.field static final blacklist EXTRA_REMOTEADAPTER_COCKTAIL:Ljava/lang/String; = "remoteAdapterCocktail"

.field static final blacklist EXTRA_REMOTEADAPTER_ON_LIGHT_BACKGROUND:Ljava/lang/String; = "remoteAdapterOnLightBackground"

.field public static final whitelist EXTRA_SHARED_ELEMENT_BOUNDS:Ljava/lang/String; = "android.widget.extra.SHARED_ELEMENT_BOUNDS"

.field static final blacklist FLAG_MASK_TO_PROPAGATE:I = 0x6

.field public static final blacklist FLAG_REAPPLY_DISALLOWED:I = 0x1

.field public static final blacklist FLAG_USE_LIGHT_BACKGROUND_LAYOUT:I = 0x4

.field public static final blacklist FLAG_WIDGET_IS_COLLECTION_CHILD:I = 0x2

.field private static final blacklist INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

.field private static final greylist-max-o LAYOUT_PARAM_ACTION_TAG:I = 0x13

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "RemoteViews"

.field public static final whitelist MARGIN_BOTTOM:I = 0x3

.field public static final whitelist MARGIN_END:I = 0x5

.field public static final whitelist MARGIN_LEFT:I = 0x0

.field public static final whitelist MARGIN_RIGHT:I = 0x2

.field public static final whitelist MARGIN_START:I = 0x4

.field public static final whitelist MARGIN_TOP:I = 0x1

.field private static final blacklist MAX_INIT_VIEW_COUNT:I = 0x10

.field private static final greylist-max-o MAX_NESTED_VIEWS:I = 0xa

.field private static final greylist-max-o MODE_HAS_LANDSCAPE_AND_PORTRAIT:I = 0x1

.field private static final blacklist MODE_HAS_SIZED_REMOTEVIEWS:I = 0x2

.field private static final greylist-max-o MODE_NORMAL:I = 0x0

.field private static final blacklist NIGHT_MODE_REFLECTION_ACTION_TAG:I = 0x1e

.field private static final greylist-max-o OVERRIDE_TEXT_COLORS_TAG:I = 0x14

.field private static final greylist-max-o REFLECTION_ACTION_TAG:I = 0x2

.field private static final blacklist REMOVE_FROM_PARENT_ACTION_TAG:I = 0x17

.field private static final blacklist RESOURCE_REFLECTION_ACTION_TAG:I = 0x18

.field public static final whitelist SEM_EXTRA_IS_CHECKED:Ljava/lang/String; = "isChecked"

.field public static final blacklist SEM_EXTRA_IS_UP:Ljava/lang/String; = "isUp"

.field public static final blacklist SEM_EXTRA_X_POSITION:Ljava/lang/String; = "x_position"

.field public static final blacklist SEM_EXTRA_Y_POSITION:Ljava/lang/String; = "y_position"

.field private static final blacklist SEM_SET_BLUR_INFO_TAG:I = 0x69

.field private static final blacklist SEM_SET_ON_CHECKED_CHANGED_PENDING_INTENT_TAG:I = 0x68

.field private static final blacklist SEM_SET_ON_LONG_CLICK_DRAGABLE_TAG:I = 0x66

.field private static final blacklist SEM_SET_ON_LONG_CLICK_PENDING_INTENT_TAG:I = 0x64

.field private static final blacklist SEM_SET_ON_LONG_CLICK_PENDING_INTENT_TEMPLATE_TAG:I = 0x65

.field private static final blacklist SEM_SET_ON_TOUCH_PENDING_INTENT_TAG:I = 0x67

.field private static final blacklist SET_COMPOUND_BUTTON_CHECKED_TAG:I = 0x1a

.field private static final greylist-max-o SET_DRAWABLE_TINT_TAG:I = 0x3

.field private static final greylist-max-o SET_EMPTY_VIEW_ACTION_TAG:I = 0x6

.field private static final blacklist SET_INT_TAG_TAG:I = 0x16

.field private static final blacklist SET_ON_CHECKED_CHANGE_RESPONSE_TAG:I = 0x1d

.field private static final blacklist SET_ON_CLICK_RESPONSE_TAG:I = 0x1

.field private static final greylist-max-o SET_PENDING_INTENT_TEMPLATE_TAG:I = 0x8

.field private static final blacklist SET_RADIO_GROUP_CHECKED:I = 0x1b

.field private static final blacklist SET_REMOTE_COLLECTION_ITEMS_ADAPTER_TAG:I = 0x1f

.field private static final greylist-max-o SET_REMOTE_INPUTS_ACTION_TAG:I = 0x12

.field private static final greylist-max-o SET_REMOTE_VIEW_ADAPTER_INTENT_TAG:I = 0xa

.field private static final greylist-max-o SET_REMOTE_VIEW_ADAPTER_LIST_TAG:I = 0xf

.field private static final blacklist SET_RIPPLE_DRAWABLE_COLOR_TAG:I = 0x15

.field private static final blacklist SET_VIEW_OUTLINE_RADIUS_TAG:I = 0x1c

.field private static final blacklist SFE_STARTING_TAG:I = 0x29

.field private static final greylist-max-o TEXT_VIEW_DRAWABLE_ACTION_TAG:I = 0xb

.field private static final greylist-max-o TEXT_VIEW_SIZE_ACTION_TAG:I = 0xd

.field static final blacklist VALUE_TYPE_ATTRIBUTE:I = 0x4

.field static final blacklist VALUE_TYPE_COMPLEX_UNIT:I = 0x2

.field static final blacklist VALUE_TYPE_RAW:I = 0x1

.field static final blacklist VALUE_TYPE_RESOURCE:I = 0x3

.field private static final greylist-max-o VIEW_CONTENT_NAVIGATION_TAG:I = 0x5

.field private static final greylist-max-o VIEW_GROUP_ACTION_ADD_TAG:I = 0x4

.field private static final greylist-max-o VIEW_GROUP_ACTION_REMOVE_TAG:I = 0x7

.field private static final greylist-max-o VIEW_PADDING_ACTION_TAG:I = 0xe

.field private static final greylist-max-o sLookupKey:Landroid/widget/RemoteViews$MethodKey;

.field private static final greylist-max-o sMethods:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/widget/RemoteViews$MethodKey;",
            "Landroid/widget/RemoteViews$MethodArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist isProductDEV:Z

.field private greylist mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mActionsLock:Ljava/lang/Object;

.field private blacklist mAllowOtherRootParent:Z

.field private blacklist mAppWidgetId:I

.field public greylist mApplication:Landroid/content/pm/ApplicationInfo;

.field private blacklist mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

.field private blacklist mApplyFlags:I

.field private greylist mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field private greylist-max-o mClassCookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIdealSize:Landroid/util/SizeF;

.field private blacklist mIsForcedOrientation:Z

.field private blacklist mIsPortrait:Z

.field private greylist-max-o mIsRoot:Z

.field private greylist-max-o mLandscape:Landroid/widget/RemoteViews;

.field private greylist mLayoutId:I

.field private blacklist mLightBackgroundLayoutId:I

.field private greylist-max-r mPortrait:Landroid/widget/RemoteViews;

.field private blacklist mProviderInstanceId:J

.field private blacklist mSizedRemoteViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mViewId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowOtherRootParent(Landroid/widget/RemoteViews;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppWidgetId(Landroid/widget/RemoteViews;)I
    .locals 0

    iget p0, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I
    .locals 0

    iget p0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBitmapCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRoot(Landroid/widget/RemoteViews;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAppWidgetId(Landroid/widget/RemoteViews;I)V
    .locals 0

    iput p1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRoot(Landroid/widget/RemoteViews;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/widget/RemoteViews;->applyNestedViews(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinalizeViewRecycling(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->finalizeViewRecycling(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;
    .locals 0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/widget/RemoteViews;->getInternalAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMethod(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasMultipleLayouts(Landroid/widget/RemoteViews;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$minflateView(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/widget/RemoteViews;->reapplyNestedViews(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;
    .locals 1

    sget-object v0, Landroid/widget/RemoteViews;->ACTION_NOOP:Landroid/widget/RemoteViews$Action;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetALTERNATIVE_DEFAULT()Landroid/os/Parcel$ReadWriteHelper;
    .locals 1

    sget-object v0, Landroid/widget/RemoteViews;->ALTERNATIVE_DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_INTERACTION_HANDLER()Landroid/widget/RemoteViews$InteractionHandler;
    .locals 1

    sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I
    .locals 0

    invoke-static {p0}, Landroid/widget/RemoteViews;->getNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetPackageUserKey(Landroid/content/pm/ApplicationInfo;)Landroid/util/Pair;
    .locals 0

    invoke-static {p0}, Landroid/widget/RemoteViews;->getPackageUserKey(Landroid/content/pm/ApplicationInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetParameterType(I)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Landroid/widget/RemoteViews;->getParameterType(I)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetStableId(Landroid/view/View;)I
    .locals 0

    invoke-static {p0}, Landroid/widget/RemoteViews;->getStableId(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smhasStableId(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Landroid/widget/RemoteViews;->hasStableId(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews;->setNextRecyclableChild(Landroid/view/ViewGroup;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetStableId(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/widget/RemoteViews;->setStableId(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/widget/RemoteViews;->visitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 403
    new-instance v0, Landroid/os/Parcel$ReadWriteHelper;

    invoke-direct {v0}, Landroid/os/Parcel$ReadWriteHelper;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->ALTERNATIVE_DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    .line 410
    new-instance v0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    .line 517
    new-instance v0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

    .line 521
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    .line 526
    new-instance v0, Landroid/widget/RemoteViews$MethodKey;

    invoke-direct {v0}, Landroid/widget/RemoteViews$MethodKey;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    .line 770
    new-instance v0, Landroid/widget/RemoteViews$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->ACTION_NOOP:Landroid/widget/RemoteViews$Action;

    .line 6583
    new-instance v0, Landroid/widget/RemoteViews$2;

    invoke-direct {v0}, Landroid/widget/RemoteViews$2;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 3

    .line 3953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    .line 395
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 433
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    .line 434
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    .line 456
    new-instance v2, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 460
    new-instance v2, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 466
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 481
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 482
    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 489
    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 497
    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 499
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 507
    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 512
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 3953
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 4
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "layoutId"    # I

    .line 3793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    .line 395
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 433
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    .line 434
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    .line 456
    new-instance v2, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 460
    new-instance v2, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 466
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 481
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 482
    iput-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 489
    iput-object v3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 497
    iput-object v3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 499
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 507
    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 512
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 3794
    iput-object p1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 3795
    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 3796
    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->put(Landroid/content/pm/ApplicationInfo;)V

    .line 3797
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 4025
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    .line 4026
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;
    .param p3, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "depth"    # I

    .line 4029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    .line 395
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 433
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    .line 434
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    .line 456
    new-instance v2, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 460
    new-instance v2, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 466
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 481
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 482
    iput-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 489
    iput-object v3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 497
    iput-object v3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 499
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 507
    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 512
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 4030
    const/16 v0, 0xa

    if-le p4, v0, :cond_1

    .line 4031
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4032
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many nested views."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4034
    :cond_1
    :goto_0
    add-int/2addr p4, v2

    .line 4036
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4038
    .local v0, "mode":I
    if-nez p2, :cond_2

    .line 4040
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 4042
    invoke-virtual {p1}, Landroid/os/Parcel;->copyClassCookies()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    goto :goto_1

    .line 4044
    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 4047
    :goto_1
    if-nez v0, :cond_4

    .line 4048
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 4049
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, Landroid/util/SizeF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/util/SizeF;

    :goto_2
    iput-object v3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 4050
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 4051
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 4052
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 4054
    invoke-direct {p0, p1, p4}, Landroid/widget/RemoteViews;->readActionsFromParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 4055
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 4056
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4057
    .local v1, "numViews":I
    const/16 v2, 0x10

    if-gt v1, v2, :cond_6

    .line 4061
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4062
    .local v2, "remoteViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v1, :cond_5

    .line 4063
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v5

    invoke-direct {v4, p1, v5, p3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    .line 4064
    .local v4, "view":Landroid/widget/RemoteViews;
    iget-object p3, v4, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 4065
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4062
    .end local v4    # "view":Landroid/widget/RemoteViews;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4067
    .end local v3    # "i":I
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews;->initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;

    .line 4068
    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 4069
    .local v3, "smallestView":Landroid/widget/RemoteViews;
    iget-object v4, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 4070
    iget v4, v3, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v4, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 4071
    iget v4, v3, Landroid/widget/RemoteViews;->mViewId:I

    iput v4, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 4072
    iget v4, v3, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v4, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 4073
    .end local v1    # "numViews":I
    .end local v2    # "remoteViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    .end local v3    # "smallestView":Landroid/widget/RemoteViews;
    goto :goto_4

    .line 4058
    .restart local v1    # "numViews":I
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Too many views in mapping from size to RemoteViews."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4075
    .end local v1    # "numViews":I
    :cond_7
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 4076
    new-instance v1, Landroid/widget/RemoteViews;

    .line 4077
    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iget-object v3, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p1, v2, v3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 4078
    iget-object v2, v1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 4079
    iget v2, v1, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 4080
    iget v2, v1, Landroid/widget/RemoteViews;->mViewId:I

    iput v2, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 4081
    iget v1, v1, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 4083
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 4084
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 4085
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    .line 4086
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    .line 4089
    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_8

    .line 4090
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 4092
    :cond_8
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;ILandroid/widget/RemoteViews-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "src"    # Landroid/widget/RemoteViews;

    .line 3944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    .line 395
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 433
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    .line 434
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    .line 456
    new-instance v2, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 460
    new-instance v2, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 466
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 481
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 482
    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 489
    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 497
    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 499
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 507
    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 512
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 3945
    invoke-direct {p0, p1, v2}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 3946
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "landscape"    # Landroid/widget/RemoteViews;
    .param p2, "portrait"    # Landroid/widget/RemoteViews;

    .line 3836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    .line 395
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 433
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    .line 434
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    .line 456
    new-instance v2, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 460
    new-instance v2, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 466
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 481
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 482
    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 489
    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 497
    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 499
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 507
    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 512
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 3837
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 3840
    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3844
    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 3845
    iget v0, p2, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 3846
    iget v0, p2, Landroid/widget/RemoteViews;->mViewId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 3847
    iget v0, p2, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 3849
    iput-object p1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 3850
    iput-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 3852
    iget-object v0, p2, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3853
    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    :goto_0
    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 3855
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 3856
    return-void

    .line 3841
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both RemoteViews must share the same package and user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3838
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both RemoteViews must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "layoutId"    # I

    .line 3769
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/widget/RemoteViews;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 3770
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "layoutId"    # I
    .param p3, "viewId"    # I

    .line 3780
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3781
    iput p3, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 3782
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/SizeF;",
            "Landroid/widget/RemoteViews;",
            ">;)V"
        }
    .end annotation

    .line 3873
    .local p1, "remoteViews":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/SizeF;Landroid/widget/RemoteViews;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    .line 395
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 433
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    .line 434
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    .line 456
    new-instance v2, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 460
    new-instance v2, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 466
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 481
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 482
    iput-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 489
    iput-object v3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 497
    iput-object v3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 499
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 507
    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 512
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 3874
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3877
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    .line 3880
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3883
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 3884
    .local v0, "single":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0, v0}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 3885
    return-void

    .line 3887
    .end local v0    # "single":Landroid/widget/RemoteViews;
    :cond_0
    nop

    .line 3888
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/widget/RemoteViews$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 3893
    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3887
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 3896
    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 3897
    .local v0, "smallestView":Landroid/widget/RemoteViews;
    iget-object v1, v0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 3898
    iget v1, v0, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 3899
    iget v1, v0, Landroid/widget/RemoteViews;->mViewId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 3900
    iget v1, v0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 3902
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 3903
    return-void

    .line 3878
    .end local v0    # "smallestView":Landroid/widget/RemoteViews;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many RemoteViews in constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3875
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The set of RemoteViews cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o addAction(Landroid/widget/RemoteViews$Action;)V
    .locals 2
    .param p1, "a"    # Landroid/widget/RemoteViews$Action;

    .line 4309
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4314
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 4315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 4318
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4320
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4321
    monitor-exit v0

    .line 4322
    return-void

    .line 4321
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4310
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteViews specifying separate layouts for orientation or size cannot be modified. Instead, fully configure each layouts individually before constructing the combined layout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist applyNestedViews(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "directParent"    # Landroid/view/ViewGroup;
    .param p3, "rootParent"    # Landroid/view/ViewGroup;
    .param p4, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p5, "size"    # Landroid/util/SizeF;
    .param p6, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 5891
    invoke-virtual {p0, p1, p5}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 5893
    .local v6, "rvToApply":Landroid/widget/RemoteViews;
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v0

    .line 5894
    .local v0, "result":Landroid/view/View;
    invoke-direct {v6, v0, p3, p4, p6}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    .line 5895
    return-object v0
.end method

.method private blacklist configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .locals 1
    .param p1, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;

    .line 4245
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 4246
    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 4247
    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 4248
    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mClassCookies:Ljava/util/Map;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 4249
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 4250
    return-void
.end method

.method private blacklist configureDescendantsAsChildren()V
    .locals 4

    .line 4259
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->getOrPut(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 4261
    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v0

    .line 4262
    .local v0, "rootData":Landroid/widget/RemoteViews$HierarchyRootData;
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4263
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 4264
    .local v2, "remoteView":Landroid/widget/RemoteViews;
    invoke-direct {v2, v0}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 4265
    .end local v2    # "remoteView":Landroid/widget/RemoteViews;
    goto :goto_0

    :cond_0
    goto :goto_2

    .line 4266
    :cond_1
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4267
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 4268
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    goto :goto_2

    .line 4271
    :cond_2
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4273
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 4274
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$Action;

    .line 4275
    .local v3, "action":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v3, v0}, Landroid/widget/RemoteViews$Action;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 4276
    .end local v3    # "action":Landroid/widget/RemoteViews$Action;
    goto :goto_1

    .line 4278
    :cond_3
    monitor-exit v1

    .line 4280
    :goto_2
    return-void

    .line 4278
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static blacklist createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "src"    # Landroid/widget/RemoteViews;
    .param p1, "hierarchyRoot"    # Landroid/widget/RemoteViews;

    .line 3957
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0}, Landroid/widget/RemoteViews;-><init>()V

    .line 3958
    .local v0, "child":Landroid/widget/RemoteViews;
    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 3959
    return-object v0
.end method

.method private blacklist finalizeViewRecycling(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 2556
    invoke-static {p1}, Landroid/widget/RemoteViews;->getNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v0

    .line 2557
    .local v0, "nextChild":I
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2558
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 2561
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/RemoteViews;->setNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 2563
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2564
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2565
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2566
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews;->finalizeViewRecycling(Landroid/view/ViewGroup;)V

    .line 2563
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2569
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "widgetSize"    # Landroid/util/SizeF;

    .line 5762
    const/4 v0, 0x0

    .line 5763
    .local v0, "bestFit":Landroid/widget/RemoteViews;
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 5764
    .local v1, "bestSqDist":F
    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 5765
    .local v3, "layout":Landroid/widget/RemoteViews;
    invoke-direct {v3}, Landroid/widget/RemoteViews;->getIdealSize()Landroid/util/SizeF;

    move-result-object v4

    .line 5766
    .local v4, "layoutSize":Landroid/util/SizeF;
    if-eqz v4, :cond_2

    .line 5770
    invoke-static {v4, p1}, Landroid/widget/RemoteViews;->fitsIn(Landroid/util/SizeF;Landroid/util/SizeF;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5771
    if-nez v0, :cond_0

    .line 5772
    move-object v0, v3

    .line 5773
    invoke-static {v4, p1}, Landroid/widget/RemoteViews;->squareDistance(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result v1

    goto :goto_1

    .line 5775
    :cond_0
    invoke-static {v4, p1}, Landroid/widget/RemoteViews;->squareDistance(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result v5

    .line 5776
    .local v5, "newSqDist":F
    cmpg-float v6, v5, v1

    if-gez v6, :cond_1

    .line 5777
    move-object v0, v3

    .line 5778
    move v1, v5

    .line 5782
    .end local v3    # "layout":Landroid/widget/RemoteViews;
    .end local v4    # "layoutSize":Landroid/util/SizeF;
    .end local v5    # "newSqDist":F
    :cond_1
    :goto_1
    goto :goto_0

    .line 5767
    .restart local v3    # "layout":Landroid/widget/RemoteViews;
    .restart local v4    # "layoutSize":Landroid/util/SizeF;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "Expected RemoteViews to have ideal size"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5783
    .end local v3    # "layout":Landroid/widget/RemoteViews;
    .end local v4    # "layoutSize":Landroid/util/SizeF;
    :cond_3
    if-nez v0, :cond_4

    .line 5784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find a RemoteViews fitting the current size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteViews"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5785
    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v2

    return-object v2

    .line 5787
    :cond_4
    return-object v0
.end method

.method private blacklist findSmallestRemoteView()Landroid/widget/RemoteViews;
    .locals 2

    .line 3824
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method private static blacklist fitsIn(Landroid/util/SizeF;Landroid/util/SizeF;)Z
    .locals 6
    .param p0, "sizeLayout"    # Landroid/util/SizeF;
    .param p1, "sizeWidget"    # Landroid/util/SizeF;

    .line 5756
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    float-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    .line 5757
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5756
    :goto_0
    return v0
.end method

.method private greylist-max-o getActionFromParcel(Landroid/os/Parcel;I)Landroid/widget/RemoteViews$Action;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "depth"    # I

    .line 4109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4110
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4203
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4178
    :sswitch_0
    new-instance v1, Landroid/widget/RemoteViews$semSetBlurInfoAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$semSetBlurInfoAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4172
    :sswitch_1
    new-instance v1, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4174
    :sswitch_2
    new-instance v1, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4200
    :sswitch_3
    new-instance v1, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4198
    :sswitch_4
    new-instance v1, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4196
    :sswitch_5
    new-instance v1, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4190
    :sswitch_6
    new-instance v1, Landroid/widget/RemoteViews$AddOuterGlowAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$AddOuterGlowAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4192
    :sswitch_7
    new-instance v1, Landroid/widget/RemoteViews$AddLinearGradientAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$AddLinearGradientAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4188
    :sswitch_8
    new-instance v1, Landroid/widget/RemoteViews$AddStrokeAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$AddStrokeAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4186
    :sswitch_9
    new-instance v1, Landroid/widget/RemoteViews$AddInnerShadowAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$AddInnerShadowAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4184
    :sswitch_a
    new-instance v1, Landroid/widget/RemoteViews$AddOuterShadowAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$AddOuterShadowAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4182
    :sswitch_b
    new-instance v1, Landroid/widget/RemoteViews$ClearAllTextEffectAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ClearAllTextEffectAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4168
    :sswitch_c
    new-instance v1, Landroid/widget/RemoteViews$AttributeReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4166
    :sswitch_d
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4164
    :sswitch_e
    new-instance v1, Landroid/widget/RemoteViews$NightModeReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4162
    :sswitch_f
    new-instance v1, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4160
    :sswitch_10
    new-instance v1, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 4158
    :sswitch_11
    new-instance v1, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 4156
    :sswitch_12
    new-instance v1, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 4154
    :sswitch_13
    new-instance v1, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4152
    :sswitch_14
    new-instance v1, Landroid/widget/RemoteViews$ResourceReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4150
    :sswitch_15
    new-instance v1, Landroid/widget/RemoteViews$RemoveFromParentAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$RemoveFromParentAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4148
    :sswitch_16
    new-instance v1, Landroid/widget/RemoteViews$SetIntTagAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetIntTagAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4146
    :sswitch_17
    new-instance v1, Landroid/widget/RemoteViews$SetRippleDrawableColor;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRippleDrawableColor;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4144
    :sswitch_18
    new-instance v1, Landroid/widget/RemoteViews$OverrideTextColorsAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$OverrideTextColorsAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4142
    :sswitch_19
    new-instance v1, Landroid/widget/RemoteViews$LayoutParamAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 4140
    :sswitch_1a
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteInputsAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteInputsAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4138
    :sswitch_1b
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4134
    :sswitch_1c
    new-instance v1, Landroid/widget/RemoteViews$ViewPaddingAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4132
    :sswitch_1d
    new-instance v1, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4136
    :sswitch_1e
    new-instance v1, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4130
    :sswitch_1f
    new-instance v1, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4128
    :sswitch_20
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4126
    :sswitch_21
    new-instance v1, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4120
    :sswitch_22
    new-instance v1, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4124
    :sswitch_23
    new-instance v1, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4122
    :sswitch_24
    new-instance v1, Landroid/widget/RemoteViews$ViewContentNavigation;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4118
    :sswitch_25
    new-instance v1, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, p1, v2, p2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo;I)V

    return-object v1

    .line 4114
    :sswitch_26
    new-instance v1, Landroid/widget/RemoteViews$SetDrawableTint;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetDrawableTint;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4116
    :sswitch_27
    new-instance v1, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    .line 4112
    :sswitch_28
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickResponse;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetOnClickResponse;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_28
        0x2 -> :sswitch_27
        0x3 -> :sswitch_26
        0x4 -> :sswitch_25
        0x5 -> :sswitch_24
        0x6 -> :sswitch_23
        0x7 -> :sswitch_22
        0x8 -> :sswitch_21
        0xa -> :sswitch_20
        0xb -> :sswitch_1f
        0xc -> :sswitch_1e
        0xd -> :sswitch_1d
        0xe -> :sswitch_1c
        0xf -> :sswitch_1b
        0x12 -> :sswitch_1a
        0x13 -> :sswitch_19
        0x14 -> :sswitch_18
        0x15 -> :sswitch_17
        0x16 -> :sswitch_16
        0x17 -> :sswitch_15
        0x18 -> :sswitch_14
        0x19 -> :sswitch_13
        0x1a -> :sswitch_12
        0x1b -> :sswitch_11
        0x1c -> :sswitch_10
        0x1d -> :sswitch_f
        0x1e -> :sswitch_e
        0x1f -> :sswitch_d
        0x20 -> :sswitch_c
        0x29 -> :sswitch_b
        0x2a -> :sswitch_a
        0x2b -> :sswitch_9
        0x2c -> :sswitch_8
        0x2d -> :sswitch_7
        0x2e -> :sswitch_6
        0x64 -> :sswitch_5
        0x65 -> :sswitch_4
        0x66 -> :sswitch_3
        0x67 -> :sswitch_2
        0x68 -> :sswitch_1
        0x69 -> :sswitch_0
    .end sparse-switch
.end method

.method private static greylist-max-o getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 6546
    if-nez p0, :cond_0

    .line 6547
    const/4 v0, 0x0

    return-object v0

    .line 6551
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 6552
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_3

    .line 6556
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 6557
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6558
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6560
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p0, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 6562
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 6565
    .end local v2    # "context":Landroid/content/Context;
    nop

    .line 6568
    :cond_2
    return-object v1

    .line 6563
    :catch_0
    move-exception v2

    .line 6564
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6553
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot create remote views out of an aplication."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getChildId(Landroid/widget/RemoteViews;)I
    .locals 3
    .param p1, "child"    # Landroid/widget/RemoteViews;

    .line 7319
    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    .line 7320
    return v0

    .line 7322
    :cond_0
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7323
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 7324
    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 7325
    add-int/lit8 v0, v1, 0x1

    return v0

    .line 7323
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7329
    .end local v1    # "i":I
    :cond_2
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7330
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-ne v1, p1, :cond_3

    .line 7331
    const/4 v0, 0x1

    return v0

    .line 7332
    :cond_3
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-ne v1, p1, :cond_4

    .line 7333
    const/4 v0, 0x2

    return v0

    .line 7337
    :cond_4
    return v0
.end method

.method private blacklist getContextForResourcesEnsuringCorrectCachedApkPaths(Landroid/content/Context;)Landroid/content/Context;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 6315
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 6316
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 6317
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6318
    return-object p1

    .line 6321
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/app/LoadedApk;->checkAndUpdateApkPaths(Landroid/content/pm/ApplicationInfo;)V

    .line 6322
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6324
    :catch_0
    move-exception v0

    .line 6325
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6329
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    return-object p1
.end method

.method private blacklist getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;
    .locals 4

    .line 7379
    new-instance v0, Landroid/widget/RemoteViews$HierarchyRootData;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RemoteViews$HierarchyRootData;-><init>(Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$ApplicationInfoCache;Ljava/util/Map;)V

    return-object v0
.end method

.method private blacklist getIdealSize()Landroid/util/SizeF;
    .locals 1

    .line 3812
    iget-object v0, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    return-object v0
.end method

.method private blacklist getInternalAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p4, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p5, "size"    # Landroid/util/SizeF;
    .param p6, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;
    .param p7, "result"    # Landroid/view/View;

    .line 6021
    new-instance v11, Landroid/widget/RemoteViews$AsyncApplyTask;

    move-object v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p5

    invoke-virtual {p0, v13, v14}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;ZLandroid/widget/RemoteViews$AsyncApplyTask-IA;)V

    return-object v11
.end method

.method private greylist-max-o getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p4, "async"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 1552
    .local p3, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1554
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v1, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1556
    :try_start_0
    sget-object v2, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    invoke-virtual {v2, v0, p3, p2}, Landroid/widget/RemoteViews$MethodKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$MethodArgs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    .local v2, "result":Landroid/widget/RemoteViews$MethodArgs;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 1562
    if-nez p3, :cond_0

    .line 1563
    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .local v5, "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 1565
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_0
    new-array v5, v3, [Ljava/lang/Class;

    aput-object p3, v5, v4

    invoke-virtual {v0, p2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1567
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :goto_0
    const-class v6, Landroid/view/RemotableViewMethod;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1573
    new-instance v6, Landroid/widget/RemoteViews$MethodArgs;

    invoke-direct {v6}, Landroid/widget/RemoteViews$MethodArgs;-><init>()V

    move-object v2, v6

    .line 1574
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    iput-object v6, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    .line 1575
    const-class v6, Landroid/view/RemotableViewMethod;

    .line 1576
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroid/view/RemotableViewMethod;

    invoke-interface {v6}, Landroid/view/RemotableViewMethod;->asyncImpl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1580
    nop

    .line 1582
    :try_start_2
    new-instance v6, Landroid/widget/RemoteViews$MethodKey;

    invoke-direct {v6}, Landroid/widget/RemoteViews$MethodKey;-><init>()V

    .line 1583
    .local v6, "key":Landroid/widget/RemoteViews$MethodKey;
    invoke-virtual {v6, v0, p3, p2}, Landroid/widget/RemoteViews$MethodKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1584
    invoke-virtual {v1, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1568
    .end local v6    # "key":Landroid/widget/RemoteViews$MethodKey;
    :cond_1
    :try_start_3
    new-instance v3, Landroid/widget/RemoteViews$ActionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "view: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " can\'t use method with RemoteViews: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1570
    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local v2    # "result":Landroid/widget/RemoteViews$MethodArgs;
    .end local p0    # "this":Landroid/widget/RemoteViews;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p4    # "async":Z
    throw v3
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1577
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local v2    # "result":Landroid/widget/RemoteViews$MethodArgs;
    .restart local p0    # "this":Landroid/widget/RemoteViews;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "methodName":Ljava/lang/String;
    .restart local p3    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p4    # "async":Z
    :catch_0
    move-exception v3

    .line 1578
    .local v3, "ex":Ljava/lang/ReflectiveOperationException;
    :try_start_4
    new-instance v4, Landroid/widget/RemoteViews$ActionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "view: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t have method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1579
    invoke-static {p3}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local p0    # "this":Landroid/widget/RemoteViews;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p4    # "async":Z
    throw v4

    .line 1587
    .end local v3    # "ex":Ljava/lang/ReflectiveOperationException;
    .restart local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local p0    # "this":Landroid/widget/RemoteViews;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "methodName":Ljava/lang/String;
    .restart local p3    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p4    # "async":Z
    :cond_2
    :goto_1
    if-nez p4, :cond_3

    .line 1588
    iget-object v3, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    monitor-exit v1

    return-object v3

    .line 1591
    :cond_3
    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1592
    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    .line 1595
    :cond_4
    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;

    if-nez v5, :cond_5

    .line 1596
    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 1597
    invoke-virtual {v5, v4, v3}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v3

    const-class v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1599
    .local v3, "asyncType":Ljava/lang/invoke/MethodType;
    :try_start_5
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    iput-object v4, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1606
    goto :goto_2

    .line 1601
    :catch_1
    move-exception v4

    .line 1602
    .local v4, "ex":Ljava/lang/ReflectiveOperationException;
    :try_start_6
    new-instance v5, Landroid/widget/RemoteViews$ActionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Async implementation declared as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but not defined for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": public Runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    .line 1605
    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local p0    # "this":Landroid/widget/RemoteViews;
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p4    # "async":Z
    throw v5

    .line 1608
    .end local v3    # "asyncType":Ljava/lang/invoke/MethodType;
    .end local v4    # "ex":Ljava/lang/ReflectiveOperationException;
    .restart local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local p0    # "this":Landroid/widget/RemoteViews;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "methodName":Ljava/lang/String;
    .restart local p3    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p4    # "async":Z
    :cond_5
    :goto_2
    iget-object v3, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;

    monitor-exit v1

    return-object v3

    .line 1609
    .end local v2    # "result":Landroid/widget/RemoteViews$MethodArgs;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2
.end method

.method private static blacklist getNextRecyclableChild(Landroid/view/ViewGroup;)I
    .locals 2
    .param p0, "vg"    # Landroid/view/ViewGroup;

    .line 2537
    const v0, 0x10204db

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2538
    .local v0, "tag":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method private static blacklist getPackageUserKey(Landroid/content/pm/ApplicationInfo;)Landroid/util/Pair;
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7374
    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 7375
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 7374
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getParameterType(I)Ljava/lang/Class;
    .locals 1
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1504
    packed-switch p0, :pswitch_data_0

    .line 1544
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 1541
    :pswitch_1
    const-class v0, Landroid/view/SemBlurInfo;

    return-object v0

    .line 1538
    :pswitch_2
    const-class v0, Landroid/graphics/BlendMode;

    return-object v0

    .line 1536
    :pswitch_3
    const-class v0, Landroid/graphics/drawable/Icon;

    return-object v0

    .line 1534
    :pswitch_4
    const-class v0, Landroid/content/res/ColorStateList;

    return-object v0

    .line 1532
    :pswitch_5
    const-class v0, Landroid/content/Intent;

    return-object v0

    .line 1530
    :pswitch_6
    const-class v0, Landroid/os/Bundle;

    return-object v0

    .line 1528
    :pswitch_7
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 1526
    :pswitch_8
    const-class v0, Landroid/net/Uri;

    return-object v0

    .line 1524
    :pswitch_9
    const-class v0, Ljava/lang/CharSequence;

    return-object v0

    .line 1522
    :pswitch_a
    const-class v0, Ljava/lang/String;

    return-object v0

    .line 1520
    :pswitch_b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1518
    :pswitch_c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1516
    :pswitch_d
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1514
    :pswitch_e
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1512
    :pswitch_f
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1510
    :pswitch_10
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1508
    :pswitch_11
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1506
    :pswitch_12
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static greylist-max-o getParameters(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1613
    .local p0, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    const-string v0, "()"

    return-object v0

    .line 1614
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 5709
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    const-string v1, "RemoteViews"

    if-eqz v0, :cond_0

    .line 5710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteViewsToApply() - mIsForcedOrientation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/RemoteViews;->mIsForcedOrientation:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mIsPortrait="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/RemoteViews;->mIsPortrait:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLandscape="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mPortrait="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5714
    :cond_0
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5715
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsForcedOrientation:Z

    if-eqz v0, :cond_2

    .line 5716
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsPortrait:Z

    if-eqz v0, :cond_1

    .line 5717
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    return-object v0

    .line 5719
    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    return-object v0

    .line 5722
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 5723
    .local v0, "orientation":I
    iget-boolean v2, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    if-eqz v2, :cond_3

    .line 5724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemoteViewsToApply apply remoteViews orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5726
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 5727
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    return-object v1

    .line 5729
    :cond_4
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    return-object v1

    .line 5732
    .end local v0    # "orientation":I
    :cond_5
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5733
    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    .line 5735
    :cond_6
    return-object p0
.end method

.method private blacklist getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "size"    # Landroid/util/SizeF;

    .line 6190
    invoke-virtual {p0, p1, p3}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6200
    .local v0, "rvToApply":Landroid/widget/RemoteViews;
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/widget/RemoteViews;->mViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const v1, 0x10204dc

    .line 6202
    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6203
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6209
    :cond_1
    return-object v0

    .line 6204
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "v"    # Landroid/view/View;

    .line 1489
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1490
    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 1491
    .local v0, "appScale":F
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1492
    .local v1, "pos":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1494
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1495
    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    aget v4, v1, v3

    int-to-float v4, v4

    mul-float/2addr v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 1496
    const/4 v4, 0x1

    aget v6, v1, v4

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 1497
    aget v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1498
    aget v3, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1499
    return-object v2
.end method

.method private static blacklist getStableId(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 2527
    const v0, 0x10204dd

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2528
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method private static blacklist getViewLayoutId(Landroid/view/View;)I
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .line 2542
    const v0, 0x1020018

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private greylist-max-o hasLandscapeAndPortraitLayouts()Z
    .locals 1

    .line 3804
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist hasMultipleLayouts()Z
    .locals 1

    .line 3800
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

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

.method private blacklist hasSizedRemoteViews()Z
    .locals 1

    .line 3808
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist hasStableId(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 2522
    const v0, 0x10204dd

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 2523
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private greylist-max-o inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rv"    # Landroid/widget/RemoteViews;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 5899
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private blacklist inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rv"    # Landroid/widget/RemoteViews;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "applyThemeResId"    # I
    .param p5, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 5908
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "RemoteViews"

    .line 5909
    invoke-direct/range {p0 .. p1}, Landroid/widget/RemoteViews;->getContextForResourcesEnsuringCorrectCachedApkPaths(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    .line 5910
    .local v6, "contextForResources":Landroid/content/Context;
    if-eqz v4, :cond_0

    .line 5911
    invoke-virtual {v4, v6}, Landroid/widget/RemoteViews$ColorResources;->apply(Landroid/content/Context;)V

    .line 5913
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;

    move-object/from16 v7, p1

    invoke-direct {v0, v7, v6}, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 5916
    .local v0, "inflationContext":Landroid/content/Context;
    if-eqz v3, :cond_1

    .line 5917
    new-instance v8, Landroid/view/ContextThemeWrapper;

    invoke-direct {v8, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v8

    goto :goto_0

    .line 5916
    :cond_1
    move-object v8, v0

    .line 5919
    .end local v0    # "inflationContext":Landroid/content/Context;
    .local v8, "inflationContext":Landroid/content/Context;
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5923
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, v8}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 5924
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .local v9, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RemoteViews;->shouldUseStaticFilter()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/widget/RemoteViews;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {v9, v0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 5927
    const/4 v10, 0x0

    :try_start_0
    iget-boolean v0, v1, Landroid/widget/RemoteViews;->isProductDEV:Z

    if-eqz v0, :cond_3

    instance-of v0, v2, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_3

    .line 5928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inflateView, package = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", layout = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", App Config = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5930
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    invoke-virtual {v9, v0, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 5931
    .local v0, "v":Landroid/view/View;
    iget v11, v1, Landroid/widget/RemoteViews;->mViewId:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 5932
    invoke-virtual {v0, v11}, Landroid/view/View;->setId(I)V

    .line 5933
    const v11, 0x10204dc

    iget v12, v1, Landroid/widget/RemoteViews;->mViewId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5943
    :cond_4
    nop

    .line 5944
    const v5, 0x1020018

    invoke-virtual/range {p2 .. p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 5945
    return-object v0

    .line 5935
    .end local v0    # "v":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 5936
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inflate error, layoutId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5937
    const/4 v11, 0x0

    .line 5938
    .local v11, "i":I
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v12

    array-length v13, v12

    :goto_2
    if-ge v10, v13, :cond_5

    aget-object v14, v12, v10

    .line 5939
    .local v14, "apkAssets":Landroid/content/res/ApkAssets;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, "], "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " : "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5940
    nop

    .end local v14    # "apkAssets":Landroid/content/res/ApkAssets;
    add-int/lit8 v11, v11, 0x1

    .line 5938
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    goto :goto_2

    .line 5942
    :cond_5
    throw v0
.end method

.method private blacklist initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "src"    # Landroid/widget/RemoteViews;
    .param p2, "hierarchyRoot"    # Landroid/widget/RemoteViews;

    .line 3963
    if-nez p2, :cond_0

    .line 3964
    iget-object v0, p1, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 3965
    iget-object v0, p1, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    goto :goto_0

    .line 3967
    :cond_0
    iget-object v0, p2, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 3968
    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 3970
    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-boolean v1, p1, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 3977
    :cond_1
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    goto :goto_2

    .line 3973
    :cond_2
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 3974
    move-object p2, p0

    .line 3979
    :goto_2
    iget-object v1, p1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 3980
    iget v1, p1, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 3981
    iget v1, p1, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 3982
    iget v1, p1, Landroid/widget/RemoteViews;->mApplyFlags:I

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 3983
    iget-object v1, p1, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 3984
    iget-object v1, p1, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 3985
    iget-wide v1, p1, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    iput-wide v1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 3986
    iget-boolean v1, p1, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    .line 3987
    iget v1, p1, Landroid/widget/RemoteViews;->mAppWidgetId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    .line 3989
    invoke-direct {p1}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3990
    iget-object v1, p1, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-static {v1, p2}, Landroid/widget/RemoteViews;->createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 3991
    iget-object v1, p1, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-static {v1, p2}, Landroid/widget/RemoteViews;->createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 3994
    :cond_3
    invoke-direct {p1}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3995
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 3996
    iget-object v1, p1, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 3997
    .local v2, "srcView":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-static {v2, p2}, Landroid/widget/RemoteViews;->createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3998
    .end local v2    # "srcView":Landroid/widget/RemoteViews;
    goto :goto_3

    .line 4001
    :cond_4
    iget-object v1, p1, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 4002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4003
    .local v1, "p":Landroid/os/Parcel;
    iget-object v2, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->putClassCookies(Ljava/util/Map;)V

    .line 4004
    invoke-direct {p1, v1, v0}, Landroid/widget/RemoteViews;->writeActionsToParcel(Landroid/os/Parcel;I)V

    .line 4005
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4008
    invoke-direct {p0, v1, v0}, Landroid/widget/RemoteViews;->readActionsFromParcel(Landroid/os/Parcel;I)V

    .line 4009
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4014
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_5
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v0, :cond_6

    .line 4015
    invoke-direct {p0}, Landroid/widget/RemoteViews;->reconstructCaches()V

    .line 4017
    :cond_6
    return-void
.end method

.method private blacklist initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Landroid/widget/RemoteViews;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3907
    .local p1, "remoteViews":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/RemoteViews;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3908
    .local v0, "sizedRemoteViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    const/4 v1, 0x0

    .line 3909
    .local v1, "classCookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Object;>;"
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 3910
    .local v2, "viewArea":F
    const/4 v3, 0x0

    .line 3911
    .local v3, "smallestView":Landroid/widget/RemoteViews;
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3912
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 3913
    .local v4, "view":Landroid/widget/RemoteViews;
    invoke-direct {v4}, Landroid/widget/RemoteViews;->getIdealSize()Landroid/util/SizeF;

    move-result-object v5

    .line 3914
    .local v5, "size":Landroid/util/SizeF;
    if-eqz v5, :cond_6

    .line 3917
    invoke-virtual {v5}, Landroid/util/SizeF;->getWidth()F

    move-result v6

    invoke-virtual {v5}, Landroid/util/SizeF;->getHeight()F

    move-result v7

    mul-float/2addr v6, v7

    .line 3918
    .local v6, "newViewArea":F
    if-eqz v3, :cond_1

    iget-object v7, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 3919
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "All RemoteViews must share the same package and user"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3922
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    cmpg-float v7, v6, v2

    if-gez v7, :cond_2

    goto :goto_2

    .line 3929
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3923
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 3924
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3926
    :cond_4
    move v2, v6

    .line 3927
    move-object v3, v4

    .line 3931
    :goto_3
    invoke-direct {v4, v5}, Landroid/widget/RemoteViews;->setIdealSize(Landroid/util/SizeF;)V

    .line 3932
    if-nez v1, :cond_5

    .line 3933
    iget-object v1, v4, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 3935
    .end local v4    # "view":Landroid/widget/RemoteViews;
    .end local v5    # "size":Landroid/util/SizeF;
    .end local v6    # "newViewArea":F
    :cond_5
    goto :goto_0

    .line 3915
    .restart local v4    # "view":Landroid/widget/RemoteViews;
    .restart local v5    # "size":Landroid/util/SizeF;
    :cond_6
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Expected RemoteViews to have ideal size"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3936
    .end local v4    # "view":Landroid/widget/RemoteViews;
    .end local v5    # "size":Landroid/util/SizeF;
    :cond_7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3937
    iput-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 3938
    return-object v1
.end method

.method static synthetic blacklist lambda$new$2(Ljava/util/Map$Entry;)Landroid/widget/RemoteViews;
    .locals 2
    .param p0, "entry"    # Ljava/util/Map$Entry;

    .line 3890
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SizeF;

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews;->setIdealSize(Landroid/util/SizeF;)V

    .line 3891
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 411
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 519
    invoke-virtual {p2, p0}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result v0

    return v0
.end method

.method private blacklist performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 6270
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 6271
    if-nez p3, :cond_0

    sget-object v1, Landroid/widget/RemoteViews;->DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    move-object p3, v1

    .line 6272
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6273
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 6274
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    .line 6275
    .local v2, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    .line 6273
    .end local v2    # "a":Landroid/widget/RemoteViews$Action;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6278
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o readActionsFromParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "depth"    # I

    .line 4095
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4096
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 4097
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 4099
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4101
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 4102
    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;->getActionFromParcel(Landroid/os/Parcel;I)Landroid/widget/RemoteViews$Action;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4104
    .end local v2    # "i":I
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4106
    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "size"    # Landroid/util/SizeF;
    .param p5, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;
    .param p6, "topLevel"    # Z

    .line 6217
    invoke-direct {p0, p1, p2, p4}, Landroid/widget/RemoteViews;->getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6219
    .local v0, "rvToApply":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, p2, v1, p3, p5}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    .line 6222
    if-eqz p6, :cond_0

    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 6223
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Landroid/widget/RemoteViews;->finalizeViewRecycling(Landroid/view/ViewGroup;)V

    .line 6225
    :cond_0
    return-void
.end method

.method private blacklist reapplyNestedViews(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "rootParent"    # Landroid/view/ViewGroup;
    .param p4, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p5, "size"    # Landroid/util/SizeF;
    .param p6, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 6229
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/RemoteViews;->getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6230
    .local v0, "rvToApply":Landroid/widget/RemoteViews;
    invoke-direct {v0, p2, p3, p4, p6}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    .line 6231
    return-void
.end method

.method private blacklist reconstructCaches()V
    .locals 2

    .line 4287
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-nez v0, :cond_0

    return-void

    .line 4288
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 4289
    new-instance v0, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 4290
    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->getOrPut(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 4291
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 4292
    return-void
.end method

.method private blacklist setIdealSize(Landroid/util/SizeF;)V
    .locals 0
    .param p1, "size"    # Landroid/util/SizeF;

    .line 3816
    iput-object p1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 3817
    return-void
.end method

.method private static blacklist setNextRecyclableChild(Landroid/view/ViewGroup;II)V
    .locals 2
    .param p0, "vg"    # Landroid/view/ViewGroup;
    .param p1, "nextChild"    # I
    .param p2, "numChildren"    # I

    .line 2546
    const v0, 0x10204db

    if-ltz p1, :cond_1

    if-lt p1, p2, :cond_0

    goto :goto_0

    .line 2549
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_1

    .line 2547
    :cond_1
    :goto_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    .line 2551
    :goto_1
    return-void
.end method

.method private static blacklist setStableId(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "stableId"    # I

    .line 2532
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x10204dd

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 2533
    return-void
.end method

.method private static blacklist squareDistance(Landroid/util/SizeF;Landroid/util/SizeF;)F
    .locals 4
    .param p0, "p1"    # Landroid/util/SizeF;
    .param p1, "p2"    # Landroid/util/SizeF;

    .line 5744
    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    .line 5745
    .local v0, "dx":F
    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    .line 5746
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public static blacklist startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/app/PendingIntent;",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Landroid/app/ActivityOptions;",
            ">;)Z"
        }
    .end annotation

    .line 7002
    .local p2, "options":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Intent;Landroid/app/ActivityOptions;>;"
    const-string v0, "RemoteViews"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 7006
    .local v2, "context":Landroid/content/Context;
    nop

    .line 7007
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    iget-object v4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/app/ActivityOptions;

    .line 7008
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 7006
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7015
    .end local v2    # "context":Landroid/content/Context;
    nop

    .line 7016
    const/4 v0, 0x1

    return v0

    .line 7012
    :catch_0
    move-exception v2

    .line 7013
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Cannot send pending intent due to unknown exception: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7014
    return v1

    .line 7009
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 7010
    .local v2, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v3, "Cannot send pending intent: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7011
    return v1
.end method

.method private static greylist-max-o visitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .locals 2
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 877
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 878
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 879
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 881
    :cond_1
    return-void
.end method

.method private blacklist writeActionsToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6528
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6530
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 6531
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    goto :goto_0

    .line 6533
    .end local v1    # "count":I
    :cond_0
    const/4 v1, 0x0

    .line 6535
    .restart local v1    # "count":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6536
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 6537
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$Action;

    .line 6538
    .local v3, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v3}, Landroid/widget/RemoteViews$Action;->getActionTag()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6539
    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6536
    .end local v3    # "a":Landroid/widget/RemoteViews$Action;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6541
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 6542
    return-void

    .line 6541
    .end local v1    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist addFlags(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 578
    iget v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 580
    and-int/lit8 v0, p1, 0x6

    .line 581
    .local v0, "flagsToPropagate":I
    if-eqz v0, :cond_2

    .line 582
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 584
    .local v2, "remoteView":Landroid/widget/RemoteViews;
    invoke-virtual {v2, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 585
    .end local v2    # "remoteView":Landroid/widget/RemoteViews;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 586
    :cond_1
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 587
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 588
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 591
    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist addStableView(ILandroid/widget/RemoteViews;I)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "nestedView"    # Landroid/widget/RemoteViews;
    .param p3, "stableId"    # I

    .line 4362
    new-instance v6, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    const/4 v4, -0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4363
    return-void
.end method

.method public whitelist addView(ILandroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "nestedView"    # Landroid/widget/RemoteViews;

    .line 4336
    if-nez p2, :cond_0

    .line 4337
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;I)V

    goto :goto_0

    .line 4338
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    .line 4336
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4339
    return-void
.end method

.method public greylist addView(ILandroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "nestedView"    # Landroid/widget/RemoteViews;
    .param p3, "index"    # I

    .line 4377
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4378
    return-void
.end method

.method public whitelist apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 5843
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 5848
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "size"    # Landroid/util/SizeF;

    .line 5854
    invoke-virtual {p0, p1, p4}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5856
    .local v0, "rvToApply":Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5857
    .local v1, "result":Landroid/view/View;
    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p3, v2}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    .line 5858
    return-object v1
.end method

.method public blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "size"    # Landroid/util/SizeF;
    .param p5, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 5881
    invoke-virtual {p0, p1, p4}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 5883
    .local v6, "rvToApply":Landroid/widget/RemoteViews;
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v0

    .line 5884
    .local v0, "result":Landroid/view/View;
    invoke-direct {v6, v0, p2, p3, p5}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    .line 5885
    return-object v0
.end method

.method public greylist-max-o applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;

    .line 5991
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p5, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 5998
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/os/CancellationSignal;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p5, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p6, "size"    # Landroid/util/SizeF;

    .line 6005
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p5, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p6, "size"    # Landroid/util/SizeF;
    .param p7, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 6013
    new-instance v11, Landroid/widget/RemoteViews$AsyncApplyTask;

    move-object v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p6

    invoke-virtual {p0, v13, v14}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;ZLandroid/widget/RemoteViews$AsyncApplyTask-IA;)V

    .line 6015
    move-object/from16 v0, p3

    invoke-static {v11, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$mstartTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object v1

    .line 6013
    return-object v1
.end method

.method public blacklist applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "applyThemeResId"    # I

    .line 5864
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;ILandroid/util/SizeF;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;ILandroid/util/SizeF;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "applyThemeResId"    # I
    .param p5, "size"    # Landroid/util/SizeF;

    .line 5871
    invoke-virtual {p0, p1, p5}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 5873
    .local v6, "rvToApply":Landroid/widget/RemoteViews;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v0

    .line 5874
    .local v0, "result":Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {v6, v0, p2, p3, v1}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    .line 5875
    return-object v0
.end method

.method public blacklist canRecycleView(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 6165
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6166
    return v0

    .line 6168
    :cond_0
    const v1, 0x1020018

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 6169
    .local v1, "previousLayoutId":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 6170
    return v0

    .line 6172
    :cond_1
    const v2, 0x10204dc

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 6173
    .local v2, "overrideIdTag":Ljava/lang/Integer;
    if-nez v2, :cond_2

    const/4 v3, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6178
    .local v3, "overrideId":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    if-ne v4, v5, :cond_3

    iget v4, p0, Landroid/widget/RemoteViews;->mViewId:I

    if-ne v4, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public whitelist clone()Landroid/widget/RemoteViews;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4218
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const-string v1, "RemoteView has been attached to another RemoteView. May only clone the root of a RemoteView hierarchy."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 4221
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist computeUniqueId(Landroid/widget/RemoteViews;)J
    .locals 7
    .param p1, "parent"    # Landroid/widget/RemoteViews;

    .line 7349
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/16 v1, 0x8

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    .line 7350
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getProviderInstanceId()J

    move-result-wide v4

    .line 7351
    .local v4, "viewId":J
    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    .line 7352
    shl-long/2addr v4, v1

    .line 7354
    :cond_0
    return-wide v4

    .line 7356
    .end local v4    # "viewId":J
    :cond_1
    if-nez p1, :cond_2

    .line 7357
    return-wide v2

    .line 7359
    :cond_2
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getProviderInstanceId()J

    move-result-wide v4

    .line 7360
    .restart local v4    # "viewId":J
    cmp-long v0, v4, v2

    if-nez v0, :cond_3

    .line 7361
    return-wide v2

    .line 7363
    :cond_3
    invoke-direct {p1, p0}, Landroid/widget/RemoteViews;->getChildId(Landroid/widget/RemoteViews;)I

    move-result v0

    .line 7364
    .local v0, "childId":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    .line 7365
    return-wide v2

    .line 7367
    :cond_4
    shl-long v1, v4, v1

    .line 7368
    .end local v4    # "viewId":J
    .local v1, "viewId":J
    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 7369
    return-wide v1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 6473
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r estimateMemoryUsage()I
    .locals 1

    .line 4300
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapMemory()I

    move-result v0

    return v0
.end method

.method public blacklist getDarkTextViews()Landroid/widget/RemoteViews;
    .locals 2

    .line 5696
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5697
    return-object p0

    .line 5701
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 5702
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5704
    iget v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 5702
    return-object v0

    .line 5704
    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 5705
    throw v0
.end method

.method public whitelist getLayoutId()I
    .locals 1

    .line 4236
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    if-eqz v0, :cond_0

    .line 4237
    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 4236
    :goto_0
    return v0
.end method

.method public whitelist getPackage()Ljava/lang/String;
    .locals 1

    .line 4225
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getProviderInstanceId()J
    .locals 2

    .line 7310
    iget-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    return-wide v0
.end method

.method public blacklist getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widgetSize"    # Landroid/util/SizeF;

    .line 5803
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 5807
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    .line 5805
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRemoteViewsToApplyIfDifferent(Landroid/util/SizeF;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "oldSize"    # Landroid/util/SizeF;
    .param p2, "newSize"    # Landroid/util/SizeF;

    .line 5818
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5819
    return-object v1

    .line 5821
    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5823
    .local v0, "oldBestFit":Landroid/widget/RemoteViews;
    :goto_0
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 5824
    .local v2, "newBestFit":Landroid/widget/RemoteViews;
    if-eq v0, v2, :cond_2

    .line 5825
    return-object v2

    .line 5827
    :cond_2
    return-object v1
.end method

.method public greylist-max-o getSequenceNumber()I
    .locals 1

    .line 6456
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getViewId()I
    .locals 1

    .line 7288
    iget v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    return v0
.end method

.method public blacklist hasFlags(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 597
    iget v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 6577
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist hidden_semSetAllowOtherRootParent(ZI)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "appwidgetid"    # I

    .line 441
    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    .line 442
    iput p2, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    .line 443
    return-void
.end method

.method public greylist-max-r mergeRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 11
    .param p1, "newRv"    # Landroid/widget/RemoteViews;

    .line 787
    if-nez p1, :cond_0

    return-void

    .line 791
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    .line 793
    .local v0, "copy":Landroid/widget/RemoteViews;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 794
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/widget/RemoteViews$Action;>;"
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 795
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 799
    :cond_1
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 801
    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 802
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 803
    iget-object v5, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews$Action;

    .line 804
    .local v5, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v5}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    nop

    .end local v5    # "a":Landroid/widget/RemoteViews$Action;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 807
    .end local v4    # "i":I
    :cond_2
    iget-object v4, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 808
    .local v4, "newActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews$Action;>;"
    if-nez v4, :cond_3

    monitor-exit v2

    return-void

    .line 809
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 813
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 814
    .local v5, "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/widget/RemoteViews$Action;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .local v6, "duplicatedActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews$Action;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$Action;

    .line 816
    .local v8, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v9

    .line 817
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 818
    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 819
    :cond_4
    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->mergeBehavior()I

    move-result v10

    if-nez v10, :cond_5

    .line 820
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/RemoteViews$Action;

    .line 821
    .local v10, "old":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    .end local v8    # "a":Landroid/widget/RemoteViews$Action;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "old":Landroid/widget/RemoteViews$Action;
    :cond_5
    :goto_2
    goto :goto_1

    .line 825
    :cond_6
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 826
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 827
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 828
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v7

    .line 832
    .end local v5    # "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/widget/RemoteViews$Action;>;"
    .end local v6    # "duplicatedActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews$Action;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v3, :cond_b

    .line 833
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RemoteViews$Action;

    .line 834
    .local v6, "a":Landroid/widget/RemoteViews$Action;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v7}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v7

    .line 835
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->mergeBehavior()I

    move-result v8

    .line 836
    .local v8, "mergeBehavior":I
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-nez v8, :cond_8

    .line 838
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/RemoteViews$Action;

    .line 839
    .local v9, "old":Landroid/widget/RemoteViews$Action;
    iget-object v10, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 841
    if-eqz v9, :cond_7

    .line 842
    invoke-virtual {v9}, Landroid/widget/RemoteViews$Action;->clear()V

    .line 843
    const/4 v9, 0x0

    .line 847
    :cond_7
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    .end local v9    # "old":Landroid/widget/RemoteViews$Action;
    :cond_8
    if-eqz v8, :cond_9

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 852
    :cond_9
    iget-object v9, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    .end local v6    # "a":Landroid/widget/RemoteViews$Action;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "mergeBehavior":I
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 855
    .end local v3    # "count":I
    .end local v4    # "newActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews$Action;>;"
    .end local v5    # "i":I
    :cond_b
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    invoke-direct {p0}, Landroid/widget/RemoteViews;->reconstructCaches()V

    .line 859
    return-void

    .line 855
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public whitelist onLoadClass(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6469
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o overrideTextColors(I)V
    .locals 1
    .param p1, "textColor"    # I

    .line 559
    new-instance v0, Landroid/widget/RemoteViews$OverrideTextColorsAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$OverrideTextColorsAction;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 560
    return-void
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .locals 3

    .line 6287
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 6288
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6289
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6290
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2}, Landroid/widget/RemoteViews$Action;->prefersAsyncApply()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6291
    const/4 v2, 0x1

    return v2

    .line 6289
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6295
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist reapply(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 6149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 6150
    return-void
.end method

.method public blacklist reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 6154
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V

    .line 6155
    return-void
.end method

.method public blacklist reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "size"    # Landroid/util/SizeF;
    .param p5, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 6160
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Z)V

    .line 6161
    return-void
.end method

.method public greylist-max-o reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;

    .line 6248
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p5, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 6254
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p5, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p6, "size"    # Landroid/util/SizeF;
    .param p7, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 6261
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p6

    invoke-direct {v11, v12, v13, v14}, Landroid/widget/RemoteViews;->getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v15

    .line 6263
    .local v15, "rvToApply":Landroid/widget/RemoteViews;
    new-instance v10, Landroid/widget/RemoteViews$AsyncApplyTask;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v9, 0x1

    const/16 v16, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p2

    move-object v11, v10

    move-object/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;ZLandroid/widget/RemoteViews$AsyncApplyTask-IA;)V

    .line 6265
    move-object/from16 v0, p3

    invoke-static {v11, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$mstartTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object v1

    .line 6263
    return-object v1
.end method

.method public greylist-max-o reduceImageSizes(II)V
    .locals 4
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 544
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v0, v0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 545
    .local v0, "cache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 546
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 547
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2, p1, p2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 545
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist removeAllViews(I)V
    .locals 1
    .param p1, "viewId"    # I

    .line 4387
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4388
    return-void
.end method

.method public greylist-max-o removeAllViewsExceptId(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "viewIdToKeep"    # I

    .line 4400
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4401
    return-void
.end method

.method public blacklist removeFromParent(I)V
    .locals 1
    .param p1, "viewId"    # I

    .line 4412
    new-instance v0, Landroid/widget/RemoteViews$RemoveFromParentAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$RemoveFromParentAction;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4413
    return-void
.end method

.method public whitelist semAddInnerShadowTextEffect(IFFFIF)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "angle"    # F
    .param p3, "offset"    # F
    .param p4, "softness"    # F
    .param p5, "color"    # I
    .param p6, "blendingOpacity"    # F

    .line 7736
    new-instance v8, Landroid/widget/RemoteViews$AddInnerShadowAction;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$AddInnerShadowAction;-><init>(Landroid/widget/RemoteViews;IFFFIF)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7737
    return-void
.end method

.method public whitelist semAddLinearGradientTextEffect(IFF[I[F[FF)V
    .locals 10
    .param p1, "viewId"    # I
    .param p2, "angle"    # F
    .param p3, "scale"    # F
    .param p4, "colors"    # [I
    .param p5, "alphas"    # [F
    .param p6, "positions"    # [F
    .param p7, "blendingOpacity"    # F

    .line 7789
    new-instance v9, Landroid/widget/RemoteViews$AddLinearGradientAction;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/widget/RemoteViews$AddLinearGradientAction;-><init>(Landroid/widget/RemoteViews;IFF[I[F[FF)V

    move-object v0, p0

    invoke-direct {p0, v9}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7790
    return-void
.end method

.method public whitelist semAddOuterGlowTextEffect(IFIF)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "size"    # F
    .param p3, "color"    # I
    .param p4, "blendingOpacity"    # F

    .line 7768
    new-instance v6, Landroid/widget/RemoteViews$AddOuterGlowAction;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AddOuterGlowAction;-><init>(Landroid/widget/RemoteViews;IFIF)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7769
    return-void
.end method

.method public whitelist semAddOuterShadowTextEffect(IFFFIF)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "angle"    # F
    .param p3, "offset"    # F
    .param p4, "softness"    # F
    .param p5, "color"    # I
    .param p6, "blendingOpacity"    # F

    .line 7716
    new-instance v8, Landroid/widget/RemoteViews$AddOuterShadowAction;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$AddOuterShadowAction;-><init>(Landroid/widget/RemoteViews;IFFFIF)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7717
    return-void
.end method

.method public whitelist semAddStrokeTextEffect(IFIF)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "size"    # F
    .param p3, "color"    # I
    .param p4, "blendingOpacity"    # F

    .line 7752
    new-instance v6, Landroid/widget/RemoteViews$AddStrokeAction;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AddStrokeAction;-><init>(Landroid/widget/RemoteViews;IFIF)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7753
    return-void
.end method

.method public whitelist semClearAllTextEffect(I)V
    .locals 1
    .param p1, "viewId"    # I

    .line 7696
    new-instance v0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$ClearAllTextEffectAction;-><init>(Landroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7697
    return-void
.end method

.method public whitelist semSetBlurInfo(ILandroid/view/SemBlurInfo;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "blurInfo"    # Landroid/view/SemBlurInfo;

    .line 8302
    new-instance v0, Landroid/widget/RemoteViews$semSetBlurInfoAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$semSetBlurInfoAction;-><init>(Landroid/widget/RemoteViews;ILandroid/view/SemBlurInfo;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8303
    return-void
.end method

.method public whitelist semSetOnCheckedChangedPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 8230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semSetOnCheckedChangedPendingIntent() viewId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pendingIntent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteViews"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8231
    new-instance v0, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8232
    return-void
.end method

.method public blacklist semSetOnLongClickDragable(ILandroid/content/ClipData;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "clipData"    # Landroid/content/ClipData;
    .param p3, "dragStartNotiIntent"    # Landroid/app/PendingIntent;
    .param p4, "dragEnterNotiIntent"    # Landroid/app/PendingIntent;
    .param p5, "dragExitNotiIntent"    # Landroid/app/PendingIntent;
    .param p6, "isNeedToRemove"    # Z

    .line 7971
    new-instance v8, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;-><init>(Landroid/widget/RemoteViews;ILandroid/content/ClipData;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7973
    return-void
.end method

.method public whitelist semSetOnLongClickPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "longClickPendingIntent"    # Landroid/app/PendingIntent;

    .line 7805
    new-instance v0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7806
    return-void
.end method

.method public whitelist semSetOnLongClickPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "pendingIntentTemplate"    # Landroid/app/PendingIntent;

    .line 7868
    new-instance v0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7869
    return-void
.end method

.method public whitelist semSetOnTouchPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 8137
    new-instance v0, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8138
    return-void
.end method

.method public whitelist setAccessibilityTraversalAfter(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "nextId"    # I

    .line 5648
    const-string/jumbo v0, "setAccessibilityTraversalAfter"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5649
    return-void
.end method

.method public whitelist setAccessibilityTraversalBefore(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "nextId"    # I

    .line 5638
    const-string/jumbo v0, "setAccessibilityTraversalBefore"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5639
    return-void
.end method

.method public whitelist setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/Bitmap;

    .line 5549
    new-instance v0, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5550
    return-void
.end method

.method public whitelist setBlendMode(ILjava/lang/String;Landroid/graphics/BlendMode;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/BlendMode;

    .line 5561
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x11

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5562
    return-void
.end method

.method public whitelist setBoolean(ILjava/lang/String;Z)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 5130
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5131
    return-void
.end method

.method public whitelist setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/Bundle;

    .line 5572
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xd

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5573
    return-void
.end method

.method public whitelist setByte(ILjava/lang/String;B)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .line 5141
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v4, 0x2

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5142
    return-void
.end method

.method public whitelist setChar(ILjava/lang/String;C)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .line 5455
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    const/16 v4, 0x8

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5456
    return-void
.end method

.method public whitelist setCharSequence(ILjava/lang/String;I)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "stringResource"    # I

    .line 5495
    new-instance v7, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/16 v4, 0xa

    const/4 v5, 0x3

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5498
    return-void
.end method

.method public whitelist setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/CharSequence;

    .line 5477
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xa

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5479
    return-void
.end method

.method public whitelist setCharSequenceAttr(ILjava/lang/String;I)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "stringAttribute"    # I

    .line 5514
    new-instance v7, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/16 v4, 0xa

    const/4 v5, 0x3

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5518
    return-void
.end method

.method public whitelist setChronometer(IJLjava/lang/String;Z)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "base"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "started"    # Z

    .line 4617
    const-string/jumbo v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 4618
    const-string/jumbo v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 4619
    const-string/jumbo v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 4620
    return-void
.end method

.method public whitelist setChronometerCountDown(IZ)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "isCountDown"    # Z

    .line 4631
    const-string/jumbo v0, "setCountDown"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 4632
    return-void
.end method

.method public whitelist setColor(ILjava/lang/String;I)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "colorResource"    # I

    .line 5235
    new-instance v7, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v4, 0x4

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5237
    return-void
.end method

.method public whitelist setColorAttr(ILjava/lang/String;I)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "colorAttribute"    # I

    .line 5253
    new-instance v7, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/4 v4, 0x4

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5255
    return-void
.end method

.method public whitelist setColorInt(ILjava/lang/String;II)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "notNight"    # I
    .param p4, "night"    # I

    .line 5272
    new-instance v7, Landroid/widget/RemoteViews$NightModeReflectionAction;

    .line 5277
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5278
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v4, 0x4

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5272
    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5279
    return-void
.end method

.method public whitelist setColorStateList(ILjava/lang/String;I)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "colorResource"    # I

    .line 5333
    new-instance v7, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/16 v4, 0xf

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5336
    return-void
.end method

.method public whitelist setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/content/res/ColorStateList;

    .line 5291
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5293
    return-void
.end method

.method public whitelist setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "notNight"    # Landroid/content/res/ColorStateList;
    .param p4, "night"    # Landroid/content/res/ColorStateList;

    .line 5310
    new-instance v7, Landroid/widget/RemoteViews$NightModeReflectionAction;

    const/16 v4, 0xf

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5317
    return-void
.end method

.method public whitelist setColorStateListAttr(ILjava/lang/String;I)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "colorAttr"    # I

    .line 5352
    new-instance v7, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/16 v4, 0xf

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5355
    return-void
.end method

.method public whitelist setCompoundButtonChecked(IZ)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .line 5668
    new-instance v0, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;-><init>(IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5669
    return-void
.end method

.method public whitelist setContentDescription(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .line 5628
    const-string/jumbo v0, "setContentDescription"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 5629
    return-void
.end method

.method public whitelist setDisplayedChild(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "childIndex"    # I

    .line 4448
    const-string/jumbo v0, "setDisplayedChild"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4449
    return-void
.end method

.method public whitelist setDouble(ILjava/lang/String;D)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .line 5444
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v4, 0x7

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5445
    return-void
.end method

.method public greylist-max-o setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "targetBackground"    # Z
    .param p3, "colorFilter"    # I
    .param p4, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 4783
    new-instance v6, Landroid/widget/RemoteViews$SetDrawableTint;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$SetDrawableTint;-><init>(Landroid/widget/RemoteViews;IZILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4784
    return-void
.end method

.method public whitelist setEmptyView(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "emptyViewId"    # I

    .line 4597
    new-instance v0, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4598
    return-void
.end method

.method public whitelist setFloat(ILjava/lang/String;F)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 5376
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v4, 0x6

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5377
    return-void
.end method

.method public whitelist setFloatDimen(ILjava/lang/String;FI)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # F
    .param p4, "unit"    # I

    .line 5412
    new-instance v7, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    const/4 v4, 0x6

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;IFI)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5415
    return-void
.end method

.method public whitelist setFloatDimen(ILjava/lang/String;I)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "dimenResource"    # I

    .line 5394
    new-instance v7, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v4, 0x6

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5396
    return-void
.end method

.method public whitelist setFloatDimenAttr(ILjava/lang/String;I)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "dimenAttr"    # I

    .line 5432
    new-instance v7, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/4 v4, 0x6

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5434
    return-void
.end method

.method public whitelist setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/graphics/drawable/Icon;

    .line 5594
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x10

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5595
    return-void
.end method

.method public whitelist setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "notNight"    # Landroid/graphics/drawable/Icon;
    .param p4, "night"    # Landroid/graphics/drawable/Icon;

    .line 5612
    new-instance v7, Landroid/widget/RemoteViews$NightModeReflectionAction;

    const/16 v4, 0x10

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5619
    return-void
.end method

.method public whitelist setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 4577
    const-string/jumbo v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 4578
    return-void
.end method

.method public whitelist setImageViewIcon(ILandroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .line 4587
    const-string/jumbo v0, "setImageIcon"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 4588
    return-void
.end method

.method public whitelist setImageViewResource(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "srcId"    # I

    .line 4557
    const-string/jumbo v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4558
    return-void
.end method

.method public whitelist setImageViewUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 4567
    const-string/jumbo v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    .line 4568
    return-void
.end method

.method public whitelist setInt(ILjava/lang/String;I)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 5163
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x4

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5164
    return-void
.end method

.method public whitelist setIntDimen(ILjava/lang/String;FI)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # F
    .param p4, "unit"    # I

    .line 5198
    new-instance v7, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    const/4 v4, 0x4

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;IFI)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5200
    return-void
.end method

.method public whitelist setIntDimen(ILjava/lang/String;I)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "dimenResource"    # I

    .line 5181
    new-instance v7, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5183
    return-void
.end method

.method public whitelist setIntDimenAttr(ILjava/lang/String;I)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "dimenAttr"    # I

    .line 5217
    new-instance v7, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5219
    return-void
.end method

.method public blacklist setIntTag(III)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "key"    # I
    .param p3, "tag"    # I

    .line 568
    new-instance v0, Landroid/widget/RemoteViews$SetIntTagAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetIntTagAction;-><init>(Landroid/widget/RemoteViews;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 569
    return-void
.end method

.method public whitelist setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/content/Intent;

    .line 5583
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xe

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5584
    return-void
.end method

.method public whitelist setLabelFor(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "labeledId"    # I

    .line 5658
    const-string/jumbo v0, "setLabelFor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5659
    return-void
.end method

.method public whitelist setLightBackgroundLayoutId(I)V
    .locals 0
    .param p1, "layoutId"    # I

    .line 5687
    iput p1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 5688
    return-void
.end method

.method public whitelist setLong(ILjava/lang/String;J)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 5365
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v4, 0x5

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5366
    return-void
.end method

.method greylist-max-o setNotRoot()V
    .locals 1

    .line 2518
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 2519
    return-void
.end method

.method public whitelist setOnCheckedChangeResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 4754
    new-instance v0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

    .line 4757
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/RemoteViews$RemoteResponse;->setInteractionType(I)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V

    .line 4754
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4759
    return-void
.end method

.method public whitelist setOnClickFillInIntent(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .line 4723
    invoke-static {p2}, Landroid/widget/RemoteViews$RemoteResponse;->fromFillInIntent(Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setOnClickResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V

    .line 4724
    return-void
.end method

.method public whitelist setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 4674
    invoke-static {p2}, Landroid/widget/RemoteViews$RemoteResponse;->fromPendingIntent(Landroid/app/PendingIntent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setOnClickResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V

    .line 4675
    return-void
.end method

.method public whitelist setOnClickResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 4686
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickResponse;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4687
    return-void
.end method

.method public blacklist setOrientation(Z)V
    .locals 1
    .param p1, "isPortrait"    # Z

    .line 8287
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsForcedOrientation:Z

    .line 8288
    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mIsPortrait:Z

    .line 8289
    return-void
.end method

.method public whitelist setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "pendingIntentTemplate"    # Landroid/app/PendingIntent;

    .line 4702
    new-instance v0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4703
    return-void
.end method

.method public greylist-max-o setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .line 4822
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setProgressBackgroundTintList"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4824
    return-void
.end method

.method public whitelist setProgressBar(IIIZ)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "max"    # I
    .param p3, "progress"    # I
    .param p4, "indeterminate"    # Z

    .line 4649
    const-string/jumbo v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 4650
    if-nez p4, :cond_0

    .line 4651
    const-string/jumbo v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4652
    const-string/jumbo v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4654
    :cond_0
    return-void
.end method

.method public greylist-max-o setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .line 4834
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setIndeterminateTintList"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4836
    return-void
.end method

.method public greylist-max-o setProgressTintList(ILandroid/content/res/ColorStateList;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .line 4810
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setProgressTintList"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4812
    return-void
.end method

.method public blacklist setProviderInstanceId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 7298
    iput-wide p1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 7299
    return-void
.end method

.method public whitelist setRadioGroupChecked(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "checkedId"    # I

    .line 5678
    new-instance v0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5679
    return-void
.end method

.method public whitelist setRelativeScrollPosition(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "offset"    # I

    .line 4954
    const-string/jumbo v0, "smoothScrollByOffset"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4955
    return-void
.end method

.method public whitelist setRemoteAdapter(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4874
    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 4875
    return-void
.end method

.method public whitelist setRemoteAdapter(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4886
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4887
    return-void
.end method

.method public whitelist setRemoteAdapter(ILandroid/widget/RemoteViews$RemoteCollectionItems;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "items"    # Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 4934
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteCollectionItems;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4935
    return-void
.end method

.method public greylist-max-r setRemoteAdapter(ILjava/util/ArrayList;I)V
    .locals 1
    .param p1, "viewId"    # I
    .param p3, "viewTypeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4915
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4916
    return-void
.end method

.method public greylist-max-o setRemoteInputs(I[Landroid/app/RemoteInput;)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "remoteInputs"    # [Landroid/app/RemoteInput;

    .line 532
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/RemoteViews$SetRemoteInputsAction;

    invoke-direct {v1, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteInputsAction;-><init>(Landroid/widget/RemoteViews;I[Landroid/app/RemoteInput;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    return-void
.end method

.method public blacklist setRippleDrawableColor(ILandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 4799
    new-instance v0, Landroid/widget/RemoteViews$SetRippleDrawableColor;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRippleDrawableColor;-><init>(Landroid/widget/RemoteViews;ILandroid/content/res/ColorStateList;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4800
    return-void
.end method

.method public whitelist setScrollPosition(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "position"    # I

    .line 4944
    const-string/jumbo v0, "smoothScrollToPosition"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4945
    return-void
.end method

.method public whitelist setShort(ILjava/lang/String;S)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .line 5152
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    const/4 v4, 0x3

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5153
    return-void
.end method

.method public whitelist setString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 5466
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x9

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5467
    return-void
.end method

.method public whitelist setTextColor(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    .line 4846
    const-string/jumbo v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4847
    return-void
.end method

.method public greylist-max-o setTextColor(ILandroid/content/res/ColorStateList;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "colors"    # Landroid/content/res/ColorStateList;

    .line 4857
    new-instance v6, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v3, "setTextColor"

    const/16 v4, 0xf

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4859
    return-void
.end method

.method public whitelist setTextViewCompoundDrawables(IIIII)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 4494
    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4495
    return-void
.end method

.method public greylist-max-o setTextViewCompoundDrawables(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "left"    # Landroid/graphics/drawable/Icon;
    .param p3, "top"    # Landroid/graphics/drawable/Icon;
    .param p4, "right"    # Landroid/graphics/drawable/Icon;
    .param p5, "bottom"    # Landroid/graphics/drawable/Icon;

    .line 4528
    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4529
    return-void
.end method

.method public whitelist setTextViewCompoundDrawablesRelative(IIIII)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "start"    # I
    .param p3, "top"    # I
    .param p4, "end"    # I
    .param p5, "bottom"    # I

    .line 4510
    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4511
    return-void
.end method

.method public greylist-max-o setTextViewCompoundDrawablesRelative(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "start"    # Landroid/graphics/drawable/Icon;
    .param p3, "top"    # Landroid/graphics/drawable/Icon;
    .param p4, "end"    # Landroid/graphics/drawable/Icon;
    .param p5, "bottom"    # Landroid/graphics/drawable/Icon;

    .line 4547
    new-instance v8, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v8}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4548
    return-void
.end method

.method public whitelist setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 4468
    const-string/jumbo v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 4469
    return-void
.end method

.method public whitelist setTextViewTextSize(IIF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "units"    # I
    .param p3, "size"    # F

    .line 4479
    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;IIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4480
    return-void
.end method

.method public whitelist setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/net/Uri;

    .line 5528
    if-eqz p3, :cond_0

    .line 5530
    invoke-virtual {p3}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object p3

    .line 5531
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5532
    const-string v0, "RemoteViews.setUri()"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 5535
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v5, 0xb

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5536
    return-void
.end method

.method public whitelist setViewLayoutHeight(IFI)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "height"    # F
    .param p3, "units"    # I

    .line 5068
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1, p2, p3}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5069
    return-void
.end method

.method public whitelist setViewLayoutHeightAttr(II)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "heightAttr"    # I

    .line 5089
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5091
    return-void
.end method

.method public whitelist setViewLayoutHeightDimen(II)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "heightDimen"    # I

    .line 5078
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5080
    return-void
.end method

.method public whitelist setViewLayoutMargin(IIFI)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "type"    # I
    .param p3, "value"    # F
    .param p4, "units"    # I

    .line 5012
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5013
    return-void
.end method

.method public whitelist setViewLayoutMarginAttr(III)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "type"    # I
    .param p3, "attr"    # I

    .line 4994
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4995
    return-void
.end method

.method public whitelist setViewLayoutMarginDimen(III)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "type"    # I
    .param p3, "dimen"    # I

    .line 4981
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4982
    return-void
.end method

.method public whitelist setViewLayoutWidth(IFI)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "width"    # F
    .param p3, "units"    # I

    .line 5029
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1, p2, p3}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5030
    return-void
.end method

.method public whitelist setViewLayoutWidthAttr(II)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "widthAttr"    # I

    .line 5050
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5052
    return-void
.end method

.method public whitelist setViewLayoutWidthDimen(II)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "widthDimen"    # I

    .line 5039
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5041
    return-void
.end method

.method public whitelist setViewOutlinePreferredRadius(IFI)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "radius"    # F
    .param p3, "units"    # I

    .line 5103
    new-instance v0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(IFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5104
    return-void
.end method

.method public whitelist setViewOutlinePreferredRadiusAttr(II)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "attrId"    # I

    .line 5119
    new-instance v0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, v1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5120
    return-void
.end method

.method public whitelist setViewOutlinePreferredRadiusDimen(II)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "resId"    # I

    .line 5111
    new-instance v0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 5112
    return-void
.end method

.method public whitelist setViewPadding(IIIII)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 4968
    new-instance v7, Landroid/widget/RemoteViews$ViewPaddingAction;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;IIIII)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4969
    return-void
.end method

.method public whitelist setViewVisibility(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .line 4458
    const-string/jumbo v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4459
    return-void
.end method

.method protected blacklist shouldUseStaticFilter()Z
    .locals 2

    .line 5956
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist showNext(I)V
    .locals 2
    .param p1, "viewId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4425
    new-instance v0, Landroid/widget/RemoteViews$ViewContentNavigation;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4426
    return-void
.end method

.method public whitelist showPrevious(I)V
    .locals 2
    .param p1, "viewId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4438
    new-instance v0, Landroid/widget/RemoteViews$ViewContentNavigation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 4439
    return-void
.end method

.method public blacklist updateAppInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 6300
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->get(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 6301
    .local v0, "existing":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6305
    return-void

    .line 6310
    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->put(Landroid/content/pm/ApplicationInfo;)V

    .line 6311
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 6312
    return-void
.end method

.method public greylist-max-o visitUris(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 869
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 870
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 871
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$Action;->visitUris(Ljava/util/function/Consumer;)V

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 874
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6477
    invoke-virtual {p1}, Landroid/os/Parcel;->allowSquashing()Z

    move-result v0

    .line 6479
    .local v0, "prevSquashingAllowed":Z
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 6480
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6483
    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v3, :cond_0

    .line 6484
    iget-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 6486
    :cond_0
    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p1, p2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6487
    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    if-nez v3, :cond_1

    goto :goto_0

    .line 6490
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6491
    iget-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    invoke-virtual {v1, p1, p2}, Landroid/util/SizeF;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 6488
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6493
    :goto_1
    iget v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6494
    iget v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6495
    iget v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6496
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;->writeActionsToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 6497
    :cond_3
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6498
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6499
    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_4

    .line 6500
    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 6502
    :cond_4
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6503
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 6504
    .local v2, "view":Landroid/widget/RemoteViews;
    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6505
    .end local v2    # "view":Landroid/widget/RemoteViews;
    goto :goto_2

    :cond_5
    goto :goto_3

    .line 6507
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6510
    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_7

    .line 6511
    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 6513
    :cond_7
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6515
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6517
    :goto_3
    iget v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6518
    iget-wide v1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 6519
    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6520
    iget v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6522
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    .line 6523
    return-void
.end method
