.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$SetRemoteInputsAction;,
        Landroid/widget/RemoteViews$BitmapCache;,
        Landroid/widget/RemoteViews$SetIntTagAction;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$ViewObjectAnimatorAction;,
        Landroid/widget/RemoteViews$RemoteCollectionCache;,
        Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/RemoteViews$ViewGroupActionAdd;,
        Landroid/widget/RemoteViews$MethodKey;,
        Landroid/widget/RemoteViews$MethodArgs;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$ApplicationInfoCache;,
        Landroid/widget/RemoteViews$HierarchyRootData;,
        Landroid/widget/RemoteViews$SetDrawInstructionAction;,
        Landroid/widget/RemoteViews$DrawInstructions;,
        Landroid/widget/RemoteViews$SetOnClickResponse;,
        Landroid/widget/RemoteViews$SetDrawableTint;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$ViewGroupActionRemove;,
        Landroid/widget/RemoteViews$ViewContentNavigation;,
        Landroid/widget/RemoteViews$SetEmptyView;,
        Landroid/widget/RemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/RemoteViews$TextViewDrawableAction;,
        Landroid/widget/RemoteViews$TextViewSizeAction;,
        Landroid/widget/RemoteViews$ViewPaddingAction;,
        Landroid/widget/RemoteViews$BitmapReflectionAction;,
        Landroid/widget/RemoteViews$LayoutParamAction;,
        Landroid/widget/RemoteViews$SetRippleDrawableColor;,
        Landroid/widget/RemoteViews$RemoveFromParentAction;,
        Landroid/widget/RemoteViews$ResourceReflectionAction;,
        Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;,
        Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;,
        Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;,
        Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;,
        Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;,
        Landroid/widget/RemoteViews$NightModeReflectionAction;,
        Landroid/widget/RemoteViews$AttributeReflectionAction;,
        Landroid/widget/RemoteViews$semSetBlurInfoAction;,
        Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;,
        Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;,
        Landroid/widget/RemoteViews$SemAnimationAction;,
        Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;,
        Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;,
        Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;,
        Landroid/widget/RemoteViews$SemSetOnLongClickDragable;,
        Landroid/widget/RemoteViews$SetTextViewShadowAction;,
        Landroid/widget/RemoteViews$SetStringTagAction;,
        Landroid/widget/RemoteViews$SemSetTextViewTextResourceAction;,
        Landroid/widget/RemoteViews$RemoteResponse;,
        Landroid/widget/RemoteViews$BaseReflectionAction;,
        Landroid/widget/RemoteViews$RemoteCollectionItems;,
        Landroid/widget/RemoteViews$InteractionHandler;,
        Landroid/widget/RemoteViews$ActionApplyParams;,
        Landroid/widget/RemoteViews$ColorResources;,
        Landroid/widget/RemoteViews$RemoteViewsContextWrapper;,
        Landroid/widget/RemoteViews$OnViewAppliedListener;,
        Landroid/widget/RemoteViews$AsyncApplyTask;,
        Landroid/widget/RemoteViews$RemoteView;,
        Landroid/widget/RemoteViews$ViewTree;,
        Landroid/widget/RemoteViews$RemoteViewOutlineProvider;,
        Landroid/widget/RemoteViews$RunnableAction;,
        Landroid/widget/RemoteViews$RuntimeAction;,
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

.field private static final blacklist MAX_ADAPTER_CONVERSION_WAITING_TIME_MS:I = 0x4e20

.field private static final blacklist MAX_INIT_VIEW_COUNT:I = 0x10

.field private static final greylist-max-o MAX_NESTED_VIEWS:I = 0xa

.field private static final blacklist MAX_SINGLE_PARCEL_SIZE:I = 0xc3500

.field private static final greylist-max-o MODE_HAS_LANDSCAPE_AND_PORTRAIT:I = 0x1

.field private static final blacklist MODE_HAS_SIZED_REMOTEVIEWS:I = 0x2

.field private static final greylist-max-o MODE_NORMAL:I = 0x0

.field private static final blacklist NIGHT_MODE_REFLECTION_ACTION_TAG:I = 0x1e

.field private static final blacklist PARCELABLE_SPAN_KEYS:[Ljava/lang/String;

.field private static final greylist-max-o REFLECTION_ACTION_TAG:I = 0x2

.field private static final blacklist REMOVE_FROM_PARENT_ACTION_TAG:I = 0x17

.field private static final blacklist RESOURCE_REFLECTION_ACTION_TAG:I = 0x18

.field private static final blacklist SEM_ANIMATION_ACTION_TAG:I = 0x6b

.field public static final whitelist SEM_EXTRA_IS_CHECKED:Ljava/lang/String; = "isChecked"

.field public static final blacklist SEM_EXTRA_IS_UP:Ljava/lang/String; = "isUp"

.field public static final blacklist SEM_EXTRA_X_POSITION:Ljava/lang/String; = "x_position"

.field public static final blacklist SEM_EXTRA_Y_POSITION:Ljava/lang/String; = "y_position"

.field private static final blacklist SEM_MAX_REMOTE_COLLECTION_ITEM_SIZE:I = 0x186a0

.field private static final blacklist SEM_SET_BLUR_INFO_TAG:I = 0x69

.field private static final blacklist SEM_SET_ON_CHECKED_CHANGED_PENDING_INTENT_TAG:I = 0x68

.field private static final blacklist SEM_SET_ON_LONG_CLICK_DRAGABLE_TAG:I = 0x66

.field private static final blacklist SEM_SET_ON_LONG_CLICK_PENDING_INTENT_TAG:I = 0x64

.field private static final blacklist SEM_SET_ON_LONG_CLICK_PENDING_INTENT_TEMPLATE_TAG:I = 0x65

.field private static final blacklist SEM_SET_ON_TOUCH_PENDING_INTENT_TAG:I = 0x67

.field private static final blacklist SEM_SET_STRING_TAG:I = 0x6d

.field private static final blacklist SEM_SET_TEXT_VIEW_SHADOW_ACTION_TAG:I = 0x6c

.field private static final blacklist SEM_TEXT_VIEW_TEXT_ACTION_TAG:I = 0x6e

.field private static final blacklist SEM_VIEW_OBJECT_ANIMATOR_ACTION_TAG:I = 0x6a

.field private static final blacklist SET_COMPOUND_BUTTON_CHECKED_TAG:I = 0x1a

.field private static final greylist-max-o SET_DRAWABLE_TINT_TAG:I = 0x3

.field private static final blacklist SET_DRAW_INSTRUCTION_TAG:I = 0x23

.field private static final greylist-max-o SET_EMPTY_VIEW_ACTION_TAG:I = 0x6

.field private static final blacklist SET_INT_TAG_TAG:I = 0x16

.field private static final blacklist SET_ON_CHECKED_CHANGE_RESPONSE_TAG:I = 0x1d

.field private static final blacklist SET_ON_CLICK_RESPONSE_TAG:I = 0x1

.field private static final blacklist SET_ON_STYLUS_HANDWRITING_RESPONSE_TAG:I = 0x22

.field private static final greylist-max-o SET_PENDING_INTENT_TEMPLATE_TAG:I = 0x8

.field private static final blacklist SET_RADIO_GROUP_CHECKED:I = 0x1b

.field private static final blacklist SET_REMOTE_ADAPTER_TAG:I = 0x21

.field private static final blacklist SET_REMOTE_COLLECTION_ITEMS_ADAPTER_TAG:I = 0x1f

.field private static final greylist-max-o SET_REMOTE_INPUTS_ACTION_TAG:I = 0x12

.field private static final greylist-max-o SET_REMOTE_VIEW_ADAPTER_INTENT_TAG:I = 0xa

.field private static final blacklist SET_RIPPLE_DRAWABLE_COLOR_TAG:I = 0x15

.field private static final blacklist SET_VIEW_OUTLINE_RADIUS_TAG:I = 0x1c

.field private static final greylist-max-o TEXT_VIEW_DRAWABLE_ACTION_TAG:I = 0xb

.field private static final greylist-max-o TEXT_VIEW_SIZE_ACTION_TAG:I = 0xd

.field static final blacklist VALUE_TYPE_ATTRIBUTE:I = 0x4

.field static final blacklist VALUE_TYPE_COMPLEX_UNIT:I = 0x2

.field static final blacklist VALUE_TYPE_RAW:I = 0x1

.field static final blacklist VALUE_TYPE_RESOURCE:I = 0x3

.field static final blacklist VALUE_TYPE_VALUE_ANIMATOR:I = 0x65

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

.field private blacklist mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

.field private blacklist mFillInIntent:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasDrawInstructions:Z

.field private blacklist mIdealSize:Landroid/util/SizeF;

.field private blacklist mIsForcedOrientation:Z

.field private blacklist mIsPortrait:Z

.field private greylist-max-o mIsRoot:Z

.field private greylist-max-o mLandscape:Landroid/widget/RemoteViews;

.field private greylist mLayoutId:I

.field private blacklist mLayoutInflaterFactory2:Landroid/view/LayoutInflater$Factory2;

.field private blacklist mLightBackgroundLayoutId:I

.field private blacklist mPendingIntentTemplate:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

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

.method static bridge synthetic blacklist -$$Nest$fgetmApplicationInfoCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$ApplicationInfoCache;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    return-object p0
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

.method static bridge synthetic blacklist -$$Nest$fgetmClassCookies(Landroid/widget/RemoteViews;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCollectionCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionCache;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRoot(Landroid/widget/RemoteViews;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLandscape(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPortrait(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSizedRemoteViews(Landroid/widget/RemoteViews;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    return-object p0
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

.method static bridge synthetic blacklist -$$Nest$mapply(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

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

.method static bridge synthetic blacklist -$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/util/SizeF;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/widget/RemoteViews;->getInternalAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/util/SizeF;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasDrawInstructions(Landroid/widget/RemoteViews;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasLandscapeAndPortraitLayouts(Landroid/widget/RemoteViews;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasMultipleLayouts(Landroid/widget/RemoteViews;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasSizedRemoteViews(Landroid/widget/RemoteViews;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$minflateView(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->reapplyNestedViews(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/widget/RemoteViews;Landroid/os/Parcel;ILandroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

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

.method static bridge synthetic blacklist -$$Nest$smgetMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    return-object p0
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
    .locals 5

    new-instance v0, Landroid/os/Parcel$ReadWriteHelper;

    invoke-direct {v0}, Landroid/os/Parcel$ReadWriteHelper;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->ALTERNATIVE_DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    new-instance v0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    new-instance v0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    new-instance v0, Landroid/widget/RemoteViews$MethodKey;

    invoke-direct {v0}, Landroid/widget/RemoteViews$MethodKey;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    new-instance v0, Landroid/widget/RemoteViews$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->ACTION_NOOP:Landroid/widget/RemoteViews$Action;

    const-string v0, "StrikethroughSpan"

    const-string v1, "StyleSpan"

    const-string v2, "TypefaceSpan"

    const-string v3, "TextAppearanceSpan"

    const-string v4, "UnderlineSpan"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/RemoteViews;->PARCELABLE_SPAN_KEYS:[Ljava/lang/String;

    new-instance v0, Landroid/widget/RemoteViews$2;

    invoke-direct {v0}, Landroid/widget/RemoteViews$2;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    new-instance v2, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v2, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    new-instance v2, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    new-instance v2, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v2, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    new-instance v2, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    iput-object p1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->put(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    new-instance v2, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v2, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    new-instance v2, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-object v3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iput-object v3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    const/16 v0, 0xa

    if-le p4, v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many nested views."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    add-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez p2, :cond_2

    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {p1}, Landroid/os/Parcel;->copyClassCookies()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    :goto_1
    if-nez v0, :cond_4

    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    invoke-direct {p0, p1, p4}, Landroid/widget/RemoteViews;->readActionsFromParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_4

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/16 v2, 0x10

    if-gt v1, v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_5

    new-instance v4, Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v5

    invoke-direct {v4, p1, v5, p3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    iget-object p3, v4, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews;->initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v3

    iget-object v4, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v4, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    iget v4, v3, Landroid/widget/RemoteViews;->mViewId:I

    iput v4, p0, Landroid/widget/RemoteViews;->mViewId:I

    iget v4, v3, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v4, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    goto :goto_4

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Too many views in mapping from size to RemoteViews."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iget-object v3, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p1, v2, v3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget-object v1, v1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget v1, v1, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget v1, v1, Landroid/widget/RemoteViews;->mViewId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget v1, v1, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    :cond_8
    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_9

    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    :cond_9
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;ILandroid/widget/RemoteViews-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RemoteViews$DrawInstructions;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    new-instance v2, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v2, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    new-instance v2, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-object v3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iput-object v3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    new-instance v0, Landroid/widget/RemoteViews$SetDrawInstructionAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$SetDrawInstructionAction;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$DrawInstructions;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RemoteViews;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    new-instance v2, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v2, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    new-instance v2, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    invoke-direct {p0, p1, v2}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    new-instance v2, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v2, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    new-instance v2, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v0, p2, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    iget v0, p2, Landroid/widget/RemoteViews;->mViewId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    iget v0, p2, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput-object p1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget-object v0, p2, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    :goto_0
    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both RemoteViews must share the same package and user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both RemoteViews must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/widget/RemoteViews;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/widget/RemoteViews;->mViewId:I

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    new-instance v2, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v2, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    new-instance v2, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v2}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-object v3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iput-object v3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-direct {p0, v0, v0}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-void

    :cond_0
    nop

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/widget/RemoteViews$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v1, v0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    iget v1, v0, Landroid/widget/RemoteViews;->mViewId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    iget v1, v0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too many RemoteViews in constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The set of RemoteViews cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o addAction(Landroid/widget/RemoteViews$Action;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteViews specifying separate layouts for orientation or size cannot be modified. Instead, fully configure each layouts individually before constructing the combined layout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0, p1, p4}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v6

    iget v4, p5, Landroid/widget/RemoteViews$ActionApplyParams;->applyThemeResId:I

    iget-object v5, p5, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v0

    invoke-direct {v6, v0, p3, p5}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    return-object v0
.end method

.method private blacklist configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mRemoteCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mClassCookies:Ljava/util/Map;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    return-void
.end method

.method private blacklist configureDescendantsAsChildren()V
    .locals 4

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->getOrPut(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_1

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

    invoke-direct {v2, v0}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v3, v0}, Landroid/widget/RemoteViews$Action;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    goto :goto_1

    :cond_3
    monitor-exit v1

    :goto_2
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static blacklist createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0}, Landroid/widget/RemoteViews;-><init>()V

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method private blacklist finalizeViewRecycling(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-static {p1}, Landroid/widget/RemoteViews;->getNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/RemoteViews;->setNextRecyclableChild(Landroid/view/ViewGroup;II)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews;->finalizeViewRecycling(Landroid/view/ViewGroup;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .locals 7

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

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

    invoke-direct {v3}, Landroid/widget/RemoteViews;->getIdealSize()Landroid/util/SizeF;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4, p1}, Landroid/widget/RemoteViews;->fitsIn(Landroid/util/SizeF;Landroid/util/SizeF;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_0

    move-object v0, v3

    invoke-static {v4, p1}, Landroid/widget/RemoteViews;->squareDistance(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result v1

    goto :goto_1

    :cond_0
    invoke-static {v4, p1}, Landroid/widget/RemoteViews;->squareDistance(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_1

    move-object v0, v3

    move v1, v5

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "Expected RemoteViews to have ideal size"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-nez v0, :cond_4

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

    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v2

    return-object v2

    :cond_4
    return-object v0
.end method

.method private blacklist findSmallestRemoteView()Landroid/widget/RemoteViews;
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method private static blacklist fitsIn(Landroid/util/SizeF;Landroid/util/SizeF;)Z
    .locals 6

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

    :goto_0
    return v0
.end method

.method private greylist-max-o getActionFromParcel(Landroid/os/Parcel;I)Landroid/widget/RemoteViews$Action;
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

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

    :sswitch_0
    new-instance v1, Landroid/widget/RemoteViews$SemSetTextViewTextResourceAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SemSetTextViewTextResourceAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_1
    new-instance v1, Landroid/widget/RemoteViews$SetStringTagAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetStringTagAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_2
    new-instance v1, Landroid/widget/RemoteViews$SetTextViewShadowAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetTextViewShadowAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_3
    new-instance v1, Landroid/widget/RemoteViews$SemAnimationAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SemAnimationAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_4
    new-instance v1, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_5
    new-instance v1, Landroid/widget/RemoteViews$semSetBlurInfoAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$semSetBlurInfoAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_6
    new-instance v1, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_7
    new-instance v1, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_8
    new-instance v1, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_9
    new-instance v1, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_a
    new-instance v1, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_b
    new-instance v1, Landroid/widget/RemoteViews$SetDrawInstructionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetDrawInstructionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_c
    new-instance v1, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_d
    new-instance v1, Landroid/widget/RemoteViews$AttributeReflectionAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_e
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_f
    new-instance v1, Landroid/widget/RemoteViews$NightModeReflectionAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_10
    new-instance v1, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_11
    new-instance v1, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_12
    new-instance v1, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_13
    new-instance v1, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_14
    new-instance v1, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_15
    new-instance v1, Landroid/widget/RemoteViews$ResourceReflectionAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_16
    new-instance v1, Landroid/widget/RemoteViews$RemoveFromParentAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$RemoveFromParentAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_17
    new-instance v1, Landroid/widget/RemoteViews$SetIntTagAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetIntTagAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_18
    new-instance v1, Landroid/widget/RemoteViews$SetRippleDrawableColor;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRippleDrawableColor;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_19
    new-instance v1, Landroid/widget/RemoteViews$LayoutParamAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_1a
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteInputsAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetRemoteInputsAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_1b
    new-instance v1, Landroid/widget/RemoteViews$ViewPaddingAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_1c
    new-instance v1, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_1d
    new-instance v1, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_1e
    new-instance v1, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_1f
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_20
    new-instance v1, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_21
    new-instance v1, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_22
    new-instance v1, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_23
    new-instance v1, Landroid/widget/RemoteViews$ViewContentNavigation;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_24
    new-instance v1, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, p1, v2, p2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo;I)V

    return-object v1

    :sswitch_25
    new-instance v1, Landroid/widget/RemoteViews$SetDrawableTint;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$SetDrawableTint;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_26
    new-instance v1, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :sswitch_27
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickResponse;

    invoke-direct {v1, p0, p1}, Landroid/widget/RemoteViews$SetOnClickResponse;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_27
        0x2 -> :sswitch_26
        0x3 -> :sswitch_25
        0x4 -> :sswitch_24
        0x5 -> :sswitch_23
        0x6 -> :sswitch_22
        0x7 -> :sswitch_21
        0x8 -> :sswitch_20
        0xa -> :sswitch_1f
        0xb -> :sswitch_1e
        0xc -> :sswitch_1d
        0xd -> :sswitch_1c
        0xe -> :sswitch_1b
        0x12 -> :sswitch_1a
        0x13 -> :sswitch_19
        0x15 -> :sswitch_18
        0x16 -> :sswitch_17
        0x17 -> :sswitch_16
        0x18 -> :sswitch_15
        0x19 -> :sswitch_14
        0x1a -> :sswitch_13
        0x1b -> :sswitch_12
        0x1c -> :sswitch_11
        0x1d -> :sswitch_10
        0x1e -> :sswitch_f
        0x1f -> :sswitch_e
        0x20 -> :sswitch_d
        0x22 -> :sswitch_c
        0x23 -> :sswitch_b
        0x64 -> :sswitch_a
        0x65 -> :sswitch_9
        0x66 -> :sswitch_8
        0x67 -> :sswitch_7
        0x68 -> :sswitch_6
        0x69 -> :sswitch_5
        0x6a -> :sswitch_4
        0x6b -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_1
        0x6e -> :sswitch_0
    .end sparse-switch
.end method

.method private static greylist-max-o getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    nop

    :cond_2
    return-object v1

    :catch_0
    move-exception v2

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

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot create remote views out of an aplication."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getChildId(Landroid/widget/RemoteViews;)I
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    add-int/lit8 v0, v1, 0x1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-ne v1, p1, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-ne v1, p1, :cond_4

    const/4 v0, 0x2

    return v0

    :cond_4
    return v0
.end method

.method private blacklist getContextForResourcesEnsuringCorrectCachedApkPaths(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/app/LoadedApk;->checkAndUpdateApkPaths(Landroid/content/pm/ApplicationInfo;)V

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

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

    :cond_1
    return-object p1
.end method

.method private blacklist getFillInIntent()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews;->mFillInIntent:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mFillInIntent:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mFillInIntent:Landroid/util/SparseArray;

    return-object v0
.end method

.method private blacklist getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;
    .locals 5

    new-instance v0, Landroid/widget/RemoteViews$HierarchyRootData;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v2, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v4, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews$HierarchyRootData;-><init>(Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$RemoteCollectionCache;Landroid/widget/RemoteViews$ApplicationInfoCache;Ljava/util/Map;)V

    return-object v0
.end method

.method private blacklist getIdealSize()Landroid/util/SizeF;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    return-object v0
.end method

.method private blacklist getInternalAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/util/SizeF;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;
    .locals 14

    new-instance v10, Landroid/widget/RemoteViews$AsyncApplyTask;

    move-object v11, p0

    move-object v12, p1

    move-object/from16 v13, p5

    invoke-virtual {p0, p1, v13}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v3, p2

    move-object v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;ZLandroid/widget/RemoteViews$AsyncApplyTask-IA;)V

    return-object v10
.end method

.method private static greylist-max-o getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;
    .locals 9
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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    invoke-virtual {v2, v0, p2, p1}, Landroid/widget/RemoteViews$MethodKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    sget-object v2, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    sget-object v3, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$MethodArgs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    if-nez p2, :cond_0

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_0

    :cond_0
    new-array v5, v3, [Ljava/lang/Class;

    aput-object p2, v5, v4

    invoke-virtual {v0, p1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    :goto_0
    const-class v6, Landroid/view/RemotableViewMethod;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Landroid/widget/RemoteViews$MethodArgs;

    invoke-direct {v6}, Landroid/widget/RemoteViews$MethodArgs;-><init>()V

    move-object v2, v6

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    iput-object v6, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    const-class v6, Landroid/view/RemotableViewMethod;

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

    nop

    :try_start_2
    new-instance v6, Landroid/widget/RemoteViews$MethodKey;

    invoke-direct {v6}, Landroid/widget/RemoteViews$MethodKey;-><init>()V

    invoke-virtual {v6, v0, p2, p1}, Landroid/widget/RemoteViews$MethodKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    sget-object v7, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

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

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v3

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

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_1
    if-nez p3, :cond_3

    iget-object v3, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    monitor-exit v1

    return-object v3

    :cond_3
    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    :cond_4
    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;

    if-nez v5, :cond_5

    iget-object v5, v2, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v3

    const-class v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

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

    goto :goto_2

    :catch_1
    move-exception v4

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

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    throw v5

    :cond_5
    :goto_2
    iget-object v3, v2, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2
.end method

.method private static blacklist getNextRecyclableChild(Landroid/view/ViewGroup;)I
    .locals 2

    const v0, 0x10204e6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

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

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getParameterType(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    const-class v0, Landroid/view/SemBlurInfo;

    return-object v0

    :pswitch_2
    const-class v0, Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_3
    const-class v0, Landroid/graphics/drawable/Icon;

    return-object v0

    :pswitch_4
    const-class v0, Landroid/content/res/ColorStateList;

    return-object v0

    :pswitch_5
    const-class v0, Landroid/content/Intent;

    return-object v0

    :pswitch_6
    const-class v0, Landroid/os/Bundle;

    return-object v0

    :pswitch_7
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0

    :pswitch_8
    const-class v0, Landroid/net/Uri;

    return-object v0

    :pswitch_9
    const-class v0, Ljava/lang/CharSequence;

    return-object v0

    :pswitch_a
    const-class v0, Ljava/lang/String;

    return-object v0

    :pswitch_b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_d
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_e
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_f
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_10
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object v0

    :pswitch_11
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0

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

    if-nez p0, :cond_0

    const-string v0, "()"

    return-object v0

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

.method private blacklist getPendingIntentTemplate()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPendingIntentTemplate:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPendingIntentTemplate:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPendingIntentTemplate:Landroid/util/SparseArray;

    return-object v0
.end method

.method private greylist-max-o getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 4

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    const-string v1, "RemoteViews"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteViewsToApply() - mIsForcedOrientation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/RemoteViews;->mIsForcedOrientation:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mIsPortrait="

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

    :cond_0
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsForcedOrientation:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsPortrait:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    return-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-boolean v2, p0, Landroid/widget/RemoteViews;->isProductDEV:Z

    if-eqz v2, :cond_3

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

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    return-object v1

    :cond_4
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    return-object v1

    :cond_5
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    :cond_6
    return-object p0
.end method

.method private blacklist getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .locals 3

    invoke-virtual {p0, p1, p3}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/widget/RemoteViews;->mViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const v1, 0x10204e7

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    aget v4, v1, v3

    int-to-float v4, v4

    mul-float/2addr v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    aget v6, v1, v4

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->top:I

    aget v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    aget v3, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    return-object v2
.end method

.method private static blacklist getStableId(Landroid/view/View;)I
    .locals 2

    const v0, 0x10204e8

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

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

    const v0, 0x1020018

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private blacklist hasDrawInstructions()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    return v0
.end method

.method private greylist-max-o hasLandscapeAndPortraitLayouts()Z
    .locals 1

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

    const v0, 0x10204e8

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private greylist hidden_semSetIntInteger(ILjava/lang/String;I)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method private greylist hidden_semSetStringTag(IILjava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetStringTagAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/RemoteViews$SetStringTagAction;-><init>(IILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method private greylist hidden_semSetTextViewShadow(IFFFI)V
    .locals 8

    new-instance v7, Landroid/widget/RemoteViews$SetTextViewShadowAction;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$SetTextViewShadowAction;-><init>(Landroid/widget/RemoteViews;IFFFI)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method private greylist hidden_semSetTextViewTextResource(IILandroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SemSetTextViewTextResourceAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/RemoteViews$SemSetTextViewTextResourceAction;-><init>(IILandroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method private greylist hidden_semSetTextViewTextSize(IFF)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(IIFF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method private greylist hidden_semSetTextViewTextSizeResource(IIIF)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(IIIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method private greylist hidden_semSetValueAnimation(ILjava/lang/String;Ljava/lang/String;FFILandroid/os/Bundle;)V
    .locals 12

    move-object v0, p0

    new-instance v10, Landroid/widget/SemRemoteViewsValueAnimation;

    move/from16 v11, p6

    int-to-long v7, v11

    move-object v1, v10

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Landroid/widget/SemRemoteViewsValueAnimation;-><init>(ILjava/lang/String;Ljava/lang/String;FFJLandroid/os/Bundle;)V

    new-instance v2, Landroid/widget/RemoteViews$SemAnimationAction;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/RemoteViews$SemAnimationAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/SemRemoteViewsAnimation;)V

    invoke-direct {p0, v2}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method private greylist hidden_semSetValueAnimation(ILjava/lang/String;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 12

    move-object v0, p0

    new-instance v10, Landroid/widget/SemRemoteViewsValueAnimation;

    move/from16 v11, p6

    int-to-long v7, v11

    move-object v1, v10

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Landroid/widget/SemRemoteViewsValueAnimation;-><init>(ILjava/lang/String;Ljava/lang/String;IIJLandroid/os/Bundle;)V

    new-instance v2, Landroid/widget/RemoteViews$SemAnimationAction;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/RemoteViews$SemAnimationAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/SemRemoteViewsAnimation;)V

    invoke-direct {p0, v2}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method private blacklist inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "RemoteViews"

    invoke-direct/range {p0 .. p1}, Landroid/widget/RemoteViews;->getContextForResourcesEnsuringCorrectCachedApkPaths(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    if-eqz v4, :cond_0

    invoke-virtual {v4, v6}, Landroid/widget/RemoteViews$ColorResources;->apply(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;

    move-object/from16 v7, p1

    invoke-direct {v0, v7, v6}, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    if-eqz v3, :cond_1

    new-instance v8, Landroid/view/ContextThemeWrapper;

    invoke-direct {v8, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v8

    goto :goto_0

    :cond_1
    move-object v8, v0

    :goto_0
    invoke-direct/range {p2 .. p2}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-direct {v0, v8}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;-><init>(Landroid/content/Context;)V

    sget-boolean v10, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v10, :cond_3

    sget-boolean v10, Landroid/os/Build;->IS_ENG:Z

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    move v10, v9

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v0, v10}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setDebug(I)V

    nop

    move-object v10, v0

    goto :goto_4

    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RemoteViews;->shouldUseStaticFilter()Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Landroid/widget/RemoteViews;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    goto :goto_3

    :cond_5
    move-object v10, v1

    :goto_3
    invoke-virtual {v0, v10}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    iget-object v10, v1, Landroid/widget/RemoteViews;->mLayoutInflaterFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz v10, :cond_6

    iget-object v10, v1, Landroid/widget/RemoteViews;->mLayoutInflaterFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-virtual {v0, v10}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v10

    invoke-virtual {v0, v10, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    :goto_4
    :try_start_0
    iget-boolean v0, v1, Landroid/widget/RemoteViews;->isProductDEV:Z

    if-eqz v0, :cond_7

    instance-of v0, v2, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_7

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

    :cond_7
    iget v0, v1, Landroid/widget/RemoteViews;->mViewId:I

    const/4 v11, -0x1

    if-eq v0, v11, :cond_8

    iget v0, v1, Landroid/widget/RemoteViews;->mViewId:I

    invoke-virtual {v10, v0}, Landroid/view/View;->setId(I)V

    iget v0, v1, Landroid/widget/RemoteViews;->mViewId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v11, 0x10204e7

    invoke-virtual {v10, v11, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    nop

    invoke-virtual/range {p2 .. p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v5, 0x1020018

    invoke-virtual {v10, v5, v0}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    return-object v10

    :catch_0
    move-exception v0

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

    const/4 v11, 0x0

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v12

    array-length v13, v12

    :goto_5
    if-ge v9, v13, :cond_9

    aget-object v14, v12, v9

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

    nop

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    goto :goto_5

    :cond_9
    throw v0
.end method

.method private blacklist initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 5

    if-nez p2, :cond_0

    iget-object v0, p1, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionCache;

    iget-object v1, p1, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$RemoteCollectionCache;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    iget-object v0, p1, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    goto :goto_0

    :cond_0
    iget-object v0, p2, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v0, p2, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-boolean v1, p1, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    move-object p2, p0

    :goto_2
    iget-object v1, p1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v1, p1, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    iget v1, p1, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iget v1, p1, Landroid/widget/RemoteViews;->mApplyFlags:I

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    iget-object v1, p1, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    iget-object v1, p1, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iget-wide v1, p1, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    iput-wide v1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    iget-boolean v1, p1, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    iget-boolean v1, p1, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    iget v1, p1, Landroid/widget/RemoteViews;->mAppWidgetId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    invoke-direct {p1}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-static {v1, p2}, Landroid/widget/RemoteViews;->createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iget-object v1, p1, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-static {v1, p2}, Landroid/widget/RemoteViews;->createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    :cond_3
    invoke-direct {p1}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

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

    iget-object v3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-static {v2, p2}, Landroid/widget/RemoteViews;->createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object v1, p1, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->putClassCookies(Ljava/util/Map;)V

    invoke-direct {p1, v1, v0}, Landroid/widget/RemoteViews;->writeActionsToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-direct {p0, v1, v0}, Landroid/widget/RemoteViews;->readActionsFromParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_5
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/widget/RemoteViews;->reconstructCaches()V

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    invoke-direct {v4}, Landroid/widget/RemoteViews;->getIdealSize()Landroid/util/SizeF;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/util/SizeF;->getWidth()F

    move-result v6

    invoke-virtual {v5}, Landroid/util/SizeF;->getHeight()F

    move-result v7

    mul-float/2addr v6, v7

    if-eqz v3, :cond_1

    iget-object v7, v3, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "All RemoteViews must share the same package and user"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    cmpg-float v7, v6, v2

    if-gez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v2, v6

    move-object v3, v4

    :goto_3
    invoke-direct {v4, v5}, Landroid/widget/RemoteViews;->setIdealSize(Landroid/util/SizeF;)V

    if-nez v1, :cond_5

    iget-object v1, v4, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    :cond_5
    goto :goto_0

    :cond_6
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Expected RemoteViews to have ideal size"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    return-object v1
.end method

.method static synthetic blacklist lambda$new$2(Ljava/util/Map$Entry;)Landroid/widget/RemoteViews;
    .locals 2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SizeF;

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews;->setIdealSize(Landroid/util/SizeF;)V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 1

    invoke-virtual {p2, p0}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result v0

    return v0
.end method

.method private blacklist performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 3

    invoke-virtual {p3}, Landroid/widget/RemoteViews$ActionApplyParams;->clone()Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object p3

    iget-object v0, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

    iput-object v0, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    :cond_0
    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x2

    goto :goto_0

    :cond_1
    const/4 v1, -0x3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setTheme(I)V

    :cond_2
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1, p2, p3}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private greylist-max-o readActionsFromParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;->getActionFromParcel(Landroid/os/Parcel;I)Landroid/widget/RemoteViews$Action;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist reapply(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;Z)V
    .locals 2

    invoke-direct {p0, p1, p2, p4}, Landroid/widget/RemoteViews;->getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {v0, p2, p3, p5}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    if-eqz p6, :cond_0

    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Landroid/widget/RemoteViews;->finalizeViewRecycling(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method private blacklist reapplyNestedViews(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;Z)V

    return-void
.end method

.method private blacklist reconstructCaches()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v0, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->getOrPut(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    return-void
.end method

.method private blacklist setIdealSize(Landroid/util/SizeF;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    return-void
.end method

.method private static blacklist setNextRecyclableChild(Landroid/view/ViewGroup;II)V
    .locals 2

    const v0, 0x10204e6

    if-ltz p1, :cond_1

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private static blacklist setStableId(Landroid/view/View;I)V
    .locals 2

    const v0, 0x10204e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    return-void
.end method

.method static blacklist setTextWithSpannableString(Landroid/widget/TextView;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_a

    if-eqz p1, :cond_a

    :try_start_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    sget-object v2, Landroid/widget/RemoteViews;->PARCELABLE_SPAN_KEYS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_9

    aget-object v6, v2, v5

    const/4 v7, 0x0

    const-string v8, "TypefaceSpan"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v9, Landroid/text/style/TypefaceSpan;

    invoke-direct {v9, v8}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    :cond_1
    goto :goto_1

    :cond_2
    const-string v8, "TextAppearanceSpan"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p2, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    new-instance v9, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    move-object v7, v9

    :cond_3
    goto :goto_1

    :cond_4
    const-string v8, "UnderlineSpan"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p2, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Landroid/text/style/UnderlineSpan;

    invoke-direct {v8}, Landroid/text/style/UnderlineSpan;-><init>()V

    move-object v7, v8

    goto :goto_1

    :cond_5
    const-string v8, "StrikethroughSpan"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p2, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v8}, Landroid/text/style/StrikethroughSpan;-><init>()V

    move-object v7, v8

    goto :goto_1

    :cond_6
    const-string v8, "StyleSpan"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, -0x1

    invoke-virtual {p2, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v8, :cond_7

    new-instance v8, Landroid/text/style/StyleSpan;

    invoke-direct {v8, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    move-object v7, v8

    :cond_7
    :goto_1
    if-eqz v7, :cond_8

    const/16 v8, 0x11

    invoke-virtual {v0, v7, v4, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_3

    :cond_a
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method private static blacklist squareDistance(Landroid/util/SizeF;Landroid/util/SizeF;)F
    .locals 4

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public static blacklist startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z
    .locals 11
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

    const-string v0, "RemoteViews"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPendingIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v3

    const/4 v10, 0x1

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_3

    instance-of v5, v4, Landroid/appwidget/AppWidgetHostView;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHostView;->getHostType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move v6, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v6, v10

    :goto_2
    move v3, v6

    goto :goto_3

    :cond_2
    move-object v5, v4

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    :cond_3
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startPendingIntent: onLockscreen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    const-string v5, "keyguard"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "runOnCover"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "ignoreKeyguardState"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v5, p1, v6}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return v10

    :cond_4
    nop

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Landroid/content/Intent;

    iget-object v3, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v9}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return v10

    :catch_0
    move-exception v2

    const-string v3, "Cannot send pending intent due to unknown exception: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_1
    move-exception v2

    const-string v3, "Cannot send pending intent: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private blacklist tryAddRemoteResponse(I)V
    .locals 4

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getPendingIntentTemplate()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getFillInIntent()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Landroid/widget/RemoteViews$SetOnClickResponse;

    invoke-static {v0, v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$smfromPendingIntentTemplateAndFillInIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Landroid/widget/RemoteViews$SetOnClickResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V

    invoke-direct {p0, v2}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    :cond_0
    return-void
.end method

.method private static greylist-max-o visitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private blacklist writeActionsToParcel(Landroid/os/Parcel;I)V
    .locals 5

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v3}, Landroid/widget/RemoteViews$Action;->getActionTag()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->allowSquashing()Z

    move-result v0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    iget-object v3, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v3, p1, p2, p3}, Landroid/widget/RemoteViews$RemoteCollectionCache;->writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    :cond_0
    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    invoke-virtual {v1, p1, p2}, Landroid/util/SizeF;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;->writeActionsToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/RemoteViews$RemoteCollectionCache;->writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    :cond_4
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

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

    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_5
    goto :goto_3

    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/RemoteViews$RemoteCollectionCache;->writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    :cond_7
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    iget v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    return-void
.end method


# virtual methods
.method public blacklist addFlags(I)V
    .locals 3

    iget v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_1

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

    invoke-virtual {v2, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist addStableView(ILandroid/widget/RemoteViews;I)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    const/4 v4, -0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist addView(ILandroid/widget/RemoteViews;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public greylist addView(ILandroid/widget/RemoteViews;I)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p4, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/widget/RemoteViews$ActionApplyParams;->withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p4, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;
    .locals 6

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
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, v10}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    move-object/from16 v12, p5

    invoke-virtual {v0, v12}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    move-object/from16 v13, p7

    invoke-virtual {v0, v13}, Landroid/widget/RemoteViews$ActionApplyParams;->withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/RemoteViews$ActionApplyParams;->withExecutor(Ljava/util/concurrent/Executor;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v14

    new-instance v15, Landroid/widget/RemoteViews$AsyncApplyTask;

    move-object/from16 v9, p1

    move-object/from16 v8, p6

    invoke-virtual {v10, v9, v8}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v7, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object v6, v14

    move/from16 v8, v16

    move-object/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;ZLandroid/widget/RemoteViews$AsyncApplyTask-IA;)V

    invoke-static {v15, v11}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$mstartTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/widget/RemoteViews$ActionApplyParams;->withThemeResId(I)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist canRecycleView(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const v1, 0x1020018

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    return v0

    :cond_1
    const v2, 0x10204e7

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    const/4 v3, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

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

    :cond_4
    :goto_1
    return v0
.end method

.method public whitelist clone()Landroid/widget/RemoteViews;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const-string v1, "RemoteView has been attached to another RemoteView. May only clone the root of a RemoteView hierarchy."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist collectAllIntents()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v0, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsNoComplete(Landroid/widget/RemoteViews;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public blacklist computeUniqueId(Landroid/widget/RemoteViews;)J
    .locals 7

    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/16 v1, 0x8

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getProviderInstanceId()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    shl-long/2addr v4, v1

    :cond_0
    return-wide v4

    :cond_1
    if-nez p1, :cond_2

    return-wide v2

    :cond_2
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getProviderInstanceId()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_3

    return-wide v2

    :cond_3
    invoke-direct {p1, p0}, Landroid/widget/RemoteViews;->getChildId(Landroid/widget/RemoteViews;)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    return-wide v2

    :cond_4
    shl-long v1, v4, v1

    int-to-long v3, v0

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r estimateMemoryUsage()I
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapMemory()I

    move-result v0

    return v0
.end method

.method public blacklist getDarkTextViews()Landroid/widget/RemoteViews;
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    return-object v0

    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    throw v0
.end method

.method public whitelist getLayoutId()I
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    :goto_0
    return v0
.end method

.method public blacklist getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mLayoutInflaterFactory2:Landroid/view/LayoutInflater$Factory2;

    return-object v0
.end method

.method public whitelist getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getProviderInstanceId()J
    .locals 2

    iget-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    return-wide v0
.end method

.method public blacklist getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .locals 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRemoteViewsToApplyIfDifferent(Landroid/util/SizeF;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .locals 3

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    if-eq v0, v2, :cond_2

    return-object v2

    :cond_2
    return-object v1
.end method

.method public greylist-max-o getSequenceNumber()I
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getViewId()I
    .locals 1

    iget v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    return v0
.end method

.method public blacklist hasFlags(I)Z
    .locals 1

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

.method public blacklist hasLegacyLists()Z
    .locals 5

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    instance-of v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    iget-object v4, v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    if-nez v4, :cond_2

    :cond_0
    instance-of v3, v2, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    iget-object v4, v3, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    if-nez v4, :cond_2

    :cond_1
    instance-of v3, v2, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-static {v3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public greylist-max-o hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

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

.method public greylist hidden_semSetAllowOtherRootParent(ZI)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mAllowOtherRootParent:Z

    iput p2, p0, Landroid/widget/RemoteViews;->mAppWidgetId:I

    return-void
.end method

.method public blacklist isLegacyListRemoteViews()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-static {v0}, Landroid/widget/RemoteViews$RemoteCollectionCache;->-$$Nest$fgetmIdToUriMapping(Landroid/widget/RemoteViews$RemoteCollectionCache;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-r mergeRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    :cond_1
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActionsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v5}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    monitor-exit v2

    return-void

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->mergeBehavior()I

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    goto :goto_1

    :cond_6
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v7

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_b

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v7}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v8}, Landroid/widget/RemoteViews$Action;->mergeBehavior()I

    move-result v8

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-nez v8, :cond_8

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/RemoteViews$Action;

    iget-object v10, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/widget/RemoteViews$Action;->clear()V

    nop

    :cond_7
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v8, :cond_9

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    :cond_9
    iget-object v9, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->reconstructCaches()V

    return-void

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2}, Landroid/widget/RemoteViews$Action;->prefersAsyncApply()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist reapply(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)V

    return-void
.end method

.method public blacklist reapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 8

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;Z)V

    return-void
.end method

.method public blacklist reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)V

    return-void
.end method

.method public blacklist reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/widget/RemoteViews$ActionApplyParams;->withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p4, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)V

    return-void
.end method

.method public greylist-max-o reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;
    .locals 6

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
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p6

    invoke-direct {v10, v12, v13, v14}, Landroid/widget/RemoteViews;->getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v15

    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, v10}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    move-object/from16 v9, p7

    invoke-virtual {v0, v9}, Landroid/widget/RemoteViews$ActionApplyParams;->withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    move-object/from16 v8, p5

    invoke-virtual {v0, v8}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/RemoteViews$ActionApplyParams;->withExecutor(Ljava/util/concurrent/Executor;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v16

    new-instance v7, Landroid/widget/RemoteViews$AsyncApplyTask;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, v16

    move-object/from16 v19, v7

    move-object/from16 v7, p2

    move/from16 v8, v17

    move-object/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;ZLandroid/widget/RemoteViews$AsyncApplyTask-IA;)V

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$mstartTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o reduceImageSizes(II)V
    .locals 4

    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v0, v0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2, p1, p2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist removeAllViews(I)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public greylist-max-o removeAllViewsExceptId(II)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public blacklist removeFromParent(I)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$RemoveFromParentAction;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$RemoveFromParentAction;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public blacklist replaceRemoteCollections(I)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    instance-of v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    iget v4, v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    if-ne v4, p1, :cond_0

    iget-object v4, v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    new-instance v4, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    iget v5, v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    iget-object v6, v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    iget v5, v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    iput v5, v4, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    iget-object v5, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    iget v4, v3, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    if-ne v4, p1, :cond_1

    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    iget v6, v3, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    iget-object v7, v3, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    invoke-direct {v5, p0, v6, v7}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    instance-of v3, v2, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-static {v3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result v4

    or-int/2addr v0, v4

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public whitelist semSetAnimation(Landroid/widget/SemRemoteViewsAnimation;)V
    .locals 2

    instance-of v0, p1, Landroid/widget/SemRemoteViewsDrawableAnimation;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RemoteViews$SemAnimationAction;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/RemoteViews$SemAnimationAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/SemRemoteViewsAnimation;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/widget/SemRemoteViewsViewAnimation;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/RemoteViews$SemAnimationAction;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/RemoteViews$SemAnimationAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/SemRemoteViewsAnimation;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroid/widget/SemRemoteViewsPropertyAnimation;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/RemoteViews$SemAnimationAction;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/RemoteViews$SemAnimationAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/SemRemoteViewsAnimation;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/widget/SemRemoteViewsValueAnimation;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/widget/RemoteViews$SemAnimationAction;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/RemoteViews$SemAnimationAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/SemRemoteViewsAnimation;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Landroid/widget/SemRemoteViewsBasicAnimation;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/widget/RemoteViews$SemAnimationAction;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/RemoteViews$SemAnimationAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/SemRemoteViewsAnimation;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public whitelist semSetBlurInfo(ILandroid/view/SemBlurInfo;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$semSetBlurInfoAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$semSetBlurInfoAction;-><init>(Landroid/widget/RemoteViews;ILandroid/view/SemBlurInfo;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist semSetOnCheckedChangedPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 2

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

    new-instance v0, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public blacklist semSetOnLongClickDragable(ILandroid/content/ClipData;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 9

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

    return-void
.end method

.method public whitelist semSetOnLongClickPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist semSetOnLongClickPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist semSetOnTouchPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public greylist semSetViewLayoutHeightAnimator(II)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public greylist semSetViewLayoutWidthAnimator(II)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public greylist semSetViewObjectAnimator(II)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewObjectAnimatorAction;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setAccessibilityTraversalAfter(II)V
    .locals 1

    const-string/jumbo v0, "setAccessibilityTraversalAfter"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public whitelist setAccessibilityTraversalBefore(II)V
    .locals 1

    const-string/jumbo v0, "setAccessibilityTraversalBefore"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public whitelist setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setBlendMode(ILjava/lang/String;Landroid/graphics/BlendMode;)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0x11

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setBoolean(ILjava/lang/String;Z)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0xd

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setByte(ILjava/lang/String;B)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setChar(ILjava/lang/String;C)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0x8

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setCharSequence(ILjava/lang/String;I)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/16 v3, 0xa

    const/4 v4, 0x3

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0xa

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setCharSequenceAttr(ILjava/lang/String;I)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/16 v3, 0xa

    const/4 v4, 0x3

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setChronometer(IJLjava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    const-string/jumbo v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    return-void
.end method

.method public whitelist setChronometerCountDown(IZ)V
    .locals 1

    const-string/jumbo v0, "setCountDown"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    return-void
.end method

.method public whitelist setColor(ILjava/lang/String;I)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v3, 0x4

    const/4 v4, 0x2

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setColorAttr(ILjava/lang/String;I)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/4 v3, 0x4

    const/4 v4, 0x2

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setColorInt(ILjava/lang/String;II)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$NightModeReflectionAction;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v3, 0x4

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setColorStateList(ILjava/lang/String;I)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/16 v3, 0xf

    const/4 v4, 0x2

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0xf

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$NightModeReflectionAction;

    const/16 v3, 0xf

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setColorStateListAttr(ILjava/lang/String;I)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/16 v3, 0xf

    const/4 v4, 0x2

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setCompoundButtonChecked(IZ)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;-><init>(IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setContentDescription(ILjava/lang/CharSequence;)V
    .locals 1

    const-string/jumbo v0, "setContentDescription"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist setDisplayedChild(II)V
    .locals 1

    const-string/jumbo v0, "setDisplayedChild"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public whitelist setDouble(ILjava/lang/String;D)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x7

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public greylist-max-o setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetDrawableTint;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$SetDrawableTint;-><init>(IZILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setEmptyView(II)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setFloat(ILjava/lang/String;F)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setFloatDimen(ILjava/lang/String;FI)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    const/4 v3, 0x6

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(ILjava/lang/String;IFI)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setFloatDimen(ILjava/lang/String;I)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v3, 0x6

    const/4 v4, 0x1

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setFloatDimenAttr(ILjava/lang/String;I)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/4 v3, 0x6

    const/4 v4, 0x1

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0x10

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$NightModeReflectionAction;

    const/16 v3, 0x10

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1

    const-string/jumbo v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public whitelist setImageViewIcon(ILandroid/graphics/drawable/Icon;)V
    .locals 1

    const-string/jumbo v0, "setImageIcon"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public whitelist setImageViewResource(II)V
    .locals 1

    const-string/jumbo v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public whitelist setImageViewUri(ILandroid/net/Uri;)V
    .locals 1

    const-string/jumbo v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public whitelist setInt(ILjava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setIntDimen(ILjava/lang/String;FI)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    const/4 v3, 0x4

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(ILjava/lang/String;IFI)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setIntDimen(ILjava/lang/String;I)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v3, 0x4

    const/4 v4, 0x1

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setIntDimenAttr(ILjava/lang/String;I)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/4 v3, 0x4

    const/4 v4, 0x1

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public blacklist setIntTag(III)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetIntTagAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/RemoteViews$SetIntTagAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0xe

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setLabelFor(II)V
    .locals 1

    const-string/jumbo v0, "setLabelFor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public blacklist setLayoutInflaterFactory(Landroid/view/LayoutInflater$Factory2;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews;->mLayoutInflaterFactory2:Landroid/view/LayoutInflater$Factory2;

    return-void
.end method

.method public whitelist setLightBackgroundLayoutId(I)V
    .locals 0

    iput p1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    return-void
.end method

.method public whitelist setLong(ILjava/lang/String;J)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method greylist-max-o setNotRoot()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    return-void
.end method

.method public whitelist setOnCheckedChangeResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/RemoteViews$RemoteResponse;->setInteractionType(I)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setOnClickFillInIntent(ILandroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getFillInIntent()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->tryAddRemoteResponse(I)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/widget/RemoteViews$RemoteResponse;->fromFillInIntent(Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setOnClickResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V

    :goto_0
    return-void
.end method

.method public whitelist setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1

    invoke-static {p2}, Landroid/widget/RemoteViews$RemoteResponse;->fromPendingIntent(Landroid/app/PendingIntent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setOnClickResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V

    return-void
.end method

.method public whitelist setOnClickResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetOnClickResponse;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setOnStylusHandwritingPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public blacklist setOrientation(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsForcedOrientation:Z

    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mIsPortrait:Z

    return-void
.end method

.method public whitelist setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getPendingIntentTemplate()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->tryAddRemoteResponse(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    :goto_0
    return-void
.end method

.method public greylist-max-o setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v1, "setProgressBackgroundTintList"

    const/16 v2, 0xf

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setProgressBar(IIIZ)V
    .locals 1

    const-string/jumbo v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    if-nez p4, :cond_0

    const-string/jumbo v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string/jumbo v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public greylist-max-o setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v1, "setIndeterminateTintList"

    const/16 v2, 0xf

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public greylist-max-o setProgressTintList(ILandroid/content/res/ColorStateList;)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v1, "setProgressTintList"

    const/16 v2, 0xf

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public blacklist setProviderInstanceId(J)V
    .locals 0

    iput-wide p1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    return-void
.end method

.method public whitelist setRadioGroupChecked(II)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setRelativeScrollPosition(II)V
    .locals 1

    const-string/jumbo v0, "smoothScrollByOffset"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public whitelist setRemoteAdapter(IILandroid/content/Intent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    return-void
.end method

.method public whitelist setRemoteAdapter(ILandroid/content/Intent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/appwidget/flags/Flags;->remoteAdapterConversion()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    :goto_0
    return-void
.end method

.method public whitelist setRemoteAdapter(ILandroid/widget/RemoteViews$RemoteCollectionItems;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteCollectionItems;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public greylist-max-r setRemoteAdapter(ILjava/util/ArrayList;I)V
    .locals 5
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

    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    int-to-long v2, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->addItem(JLandroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->setViewTypeCount(I)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/widget/RemoteViews$RemoteCollectionItems;)V

    return-void
.end method

.method public greylist-max-o setRemoteInputs(I[Landroid/app/RemoteInput;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/RemoteViews$SetRemoteInputsAction;

    invoke-direct {v1, p1, p2}, Landroid/widget/RemoteViews$SetRemoteInputsAction;-><init>(I[Landroid/app/RemoteInput;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setRippleDrawableColor(ILandroid/content/res/ColorStateList;)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetRippleDrawableColor;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRippleDrawableColor;-><init>(Landroid/widget/RemoteViews;ILandroid/content/res/ColorStateList;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setScrollPosition(II)V
    .locals 1

    const-string/jumbo v0, "smoothScrollToPosition"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public whitelist setShort(ILjava/lang/String;S)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0x9

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setTextColor(II)V
    .locals 1

    const-string/jumbo v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public greylist-max-o setTextColor(ILandroid/content/res/ColorStateList;)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string/jumbo v1, "setTextColor"

    const/16 v2, 0xf

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setTextViewCompoundDrawables(IIIII)V
    .locals 8

    new-instance v7, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v2, 0x0

    move-object v0, v7

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZIIII)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public greylist-max-o setTextViewCompoundDrawables(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 8

    new-instance v7, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v2, 0x0

    move-object v0, v7

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setTextViewCompoundDrawablesRelative(IIIII)V
    .locals 8

    new-instance v7, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v2, 0x1

    move-object v0, v7

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZIIII)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public greylist-max-o setTextViewCompoundDrawablesRelative(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 8

    new-instance v7, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v2, 0x1

    move-object v0, v7

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v7}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1

    const-string/jumbo v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist setTextViewTextSize(IIF)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(IIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object p3

    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RemoteViews.setUri()"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0xb

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setViewLayoutHeight(IFI)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1, p2, p3}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setViewLayoutHeightAttr(II)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setViewLayoutHeightDimen(II)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setViewLayoutMargin(IIFI)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setViewLayoutMarginAttr(III)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setViewLayoutMarginDimen(III)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setViewLayoutWidth(IFI)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1, p2, p3}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setViewLayoutWidthAttr(II)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setViewLayoutWidthDimen(II)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setViewOutlinePreferredRadius(IFI)V
    .locals 1

    new-instance v0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(IFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setViewOutlinePreferredRadiusAttr(II)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, v1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setViewOutlinePreferredRadiusDimen(II)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setViewPadding(IIIII)V
    .locals 7

    new-instance v6, Landroid/widget/RemoteViews$ViewPaddingAction;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(IIIII)V

    invoke-direct {p0, v6}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist setViewVisibility(II)V
    .locals 1

    const-string/jumbo v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method protected blacklist shouldUseStaticFilter()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist showNext(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/widget/RemoteViews$ViewContentNavigation;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public whitelist showPrevious(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/widget/RemoteViews$ViewContentNavigation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public blacklist updateAppInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->get(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->put(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

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

    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$Action;->visitUris(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    return-void
.end method
