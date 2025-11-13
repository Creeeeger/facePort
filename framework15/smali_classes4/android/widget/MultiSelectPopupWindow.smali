.class public Landroid/widget/MultiSelectPopupWindow;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MultiSelectPopupWindow$SelectionController;,
        Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;,
        Landroid/widget/MultiSelectPopupWindow$PositionListener;,
        Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;,
        Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;,
        Landroid/widget/MultiSelectPopupWindow$HandleView;,
        Landroid/widget/MultiSelectPopupWindow$CursorController;,
        Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MultiSelectPopupWindow"

.field private static final blacklist TEMP_POSITION:[F

.field private static final blacklist TW_MENU_ITEM_ORDER_CLOSE:I = 0x0

.field private static final blacklist TW_MENU_ITEM_ORDER_COPY:I = 0x2

.field private static final blacklist TW_MENU_ITEM_ORDER_SELECT_ALL:I = 0x1

.field private static final blacklist TW_MENU_ITEM_ORDER_SHARE:I = 0x3

.field private static final blacklist TW_MENU_ITEM_ORDER_TRANSLATE:I = 0x5

.field private static blacklist sInstance:Landroid/widget/MultiSelectPopupWindow;

.field private static blacklist sTextActionMode:Landroid/view/ActionMode;

.field private static blacklist sTextView:Landroid/widget/TextView;


# instance fields
.field private blacklist mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

.field private blacklist mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private blacklist mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private blacklist mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

.field private final blacklist mShowFloatingToolbar:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSelectHandleLeft(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectHandleRight(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionController(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$SelectionController;
    .locals 0

    iget-object p0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelectHandleLeft(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelectHandleRight(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelectionController(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$SelectionController;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPositionListener(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;
    .locals 0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misEmergencyMode(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSelectAllEnable(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isSelectAllEnable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misShareViaEnable(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isShareViaEnable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateFloatingToolbarVisibility(Landroid/widget/MultiSelectPopupWindow;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/MultiSelectPopupWindow;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTEMP_POSITION()[F
    .locals 1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->TEMP_POSITION:[F

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsTextActionMode()Landroid/view/ActionMode;
    .locals 1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsTextView()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsTextActionMode(Landroid/view/ActionMode;)V
    .locals 0

    sput-object p0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->TEMP_POSITION:[F

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/MultiSelectPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/MultiSelectPopupWindow$1;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mShowFloatingToolbar:Ljava/lang/Runnable;

    const/4 v0, 0x0

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public static blacklist getInstance()Landroid/widget/MultiSelectPopupWindow;
    .locals 1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {v0}, Landroid/widget/MultiSelectPopupWindow;-><init>()V

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    :cond_0
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    return-object v0
.end method

.method private blacklist getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    .locals 2

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/MultiSelectPopupWindow$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/MultiSelectPopupWindow$PositionListener;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$PositionListener-IA;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    return-object v0
.end method

.method private blacklist hideFloatingToolbar()V
    .locals 3

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    :cond_0
    return-void
.end method

.method private blacklist isDictionaryEnable()Z
    .locals 4

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v2
.end method

.method private blacklist isEmergencyMode()Z
    .locals 5

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-object v3, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEmergencyMode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isUPSMode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MultiSelectPopupWindow"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private blacklist isSelectAllEnable()Z
    .locals 4

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "MultiSelectPopupWindow"

    const-string v3, "getTextFormultiSelection() text is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private blacklist isShareViaEnable()Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isTranslatorEnable()Z
    .locals 7

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.app.translator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.google.android.apps.translate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x1

    return v2

    :cond_2
    return v2
.end method

.method private blacklist showFloatingToolbar()V
    .locals 5

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sget-object v1, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private blacklist updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->hideFloatingToolbar()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->showFloatingToolbar()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist changeCurrentSelectedView(Landroid/widget/TextView;)V
    .locals 1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sput-object p1, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    return-void
.end method

.method blacklist getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;
    .locals 2

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/MultiSelectPopupWindow$SelectionController;

    invoke-direct {v0, p0, v1}, Landroid/widget/MultiSelectPopupWindow$SelectionController;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$SelectionController-IA;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

    return-object v0
.end method

.method public blacklist hideMultiSelectPopupWindow()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->hide()V

    :cond_0
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    return-void
.end method

.method public blacklist initSelectionControllerPosition()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->initPreviousOffset()V

    :cond_0
    return-void
.end method

.method blacklist onScrollChanged()V
    .locals 1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->onScrollChanged()V

    :cond_0
    return-void
.end method

.method public blacklist showMultiSelectPopupWindow()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->hide()V

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->show()V

    :cond_0
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    return-void

    :cond_1
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;-><init>(Landroid/widget/MultiSelectPopupWindow;Z)V

    sget-object v2, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    sput-object v1, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    return-void
.end method
