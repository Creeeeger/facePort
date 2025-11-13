.class public Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;
.implements Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;


# static fields
.field public static final DATA_ONLY_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final PREFERRED_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field public static final SIM_INFO_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;


# instance fields
.field public mChangedByDataButton:Z

.field public final mContext:Landroid/content/Context;

.field public mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

.field public mCurrentOrientation:I

.field public mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

.field public mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field public mESIMIconArray:Landroid/content/res/TypedArray;

.field public final mIntentReceiver:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;

.field public mLocale:Ljava/util/Locale;

.field public mNightModeOn:Z

.field public mPSimIconArray:Landroid/content/res/TypedArray;

.field public mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

.field public mSlotButtonGroup:Landroid/widget/LinearLayout;

.field public mSlotButtonTextColor:I

.field public final mSlotButtons:Ljava/util/ArrayList;


# direct methods
.method public static -$$Nest$mgetSimIcon(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;I)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isSupportESim()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mESIMIconArray:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mESIMIconArray:Landroid/content/res/TypedArray;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mESIMIconArray:Landroid/content/res/TypedArray;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPSimIconArray:Landroid/content/res/TypedArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPSimIconArray:Landroid/content/res/TypedArray;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPSimIconArray:Landroid/content/res/TypedArray;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->PREFERRED_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO1:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO2:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    filled-new-array {v0, v1}, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->SIM_INFO_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    filled-new-array {v2}, [Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->DATA_ONLY_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mNightModeOn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mLocale:Ljava/util/Locale;

    iput p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mCurrentOrientation:I

    iput-boolean p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    new-instance p2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)V

    iput-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mIntentReceiver:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    return-void
.end method


# virtual methods
.method public final isPhoneNumberNeeded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMController;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-direct {v1}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    :cond_0
    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-direct {v1}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/multisim/MultiSIMData;->copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->reverseSlotIfNeed(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->registerCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mIntentReceiver:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->updateButtonList()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    iput v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mNightModeOn:Z

    if-eq v4, v1, :cond_3

    iput-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mNightModeOn:Z

    move v0, v2

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mLocale:Ljava/util/Locale;

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    if-eqz v2, :cond_7

    const-string p1, "MultiSIMPreferredSlotView"

    const-string/jumbo v0, "updateResources()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0605c2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonTextColor:I

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080e30

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070a9f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    :cond_7
    return-void
.end method

.method public final onDataChanged(Lcom/android/systemui/settings/multisim/MultiSIMData;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMData;->copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    iput-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->updateSlotListPopupContents()V

    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mIntentReceiver:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    new-instance v0, Lcom/android/systemui/DualToneHandler;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    const v3, 0x7f140616

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mNightModeOn:Z

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mLocale:Ljava/util/Locale;

    const v0, 0x7f0a0b92

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a9f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0605c2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonTextColor:I

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final updateButtonList()V
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-boolean v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CountryISO"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "US"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->DATA_ONLY_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->PREFERRED_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->SIM_INFO_BUTTON_LIST:[Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    :goto_1
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    new-instance v6, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    iget-object v7, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    invoke-direct {v6, p0, v5, v7, v8}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iget-object v5, v6, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/util/RecoilEffectUtil;->getRecoilSmallAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    iget-object v5, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    invoke-virtual {v6}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    add-int/2addr v4, v0

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-virtual {v2, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateEdgePadding(Z)V

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    array-length v1, v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-virtual {p0, v3}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateEdgePadding(Z)V

    :cond_4
    return-void
.end method
