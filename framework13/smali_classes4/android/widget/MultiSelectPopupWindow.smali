.class public Landroid/widget/MultiSelectPopupWindow;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;,
        Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;,
        Landroid/widget/MultiSelectPopupWindow$HandleView;,
        Landroid/widget/MultiSelectPopupWindow$SelectionController;,
        Landroid/widget/MultiSelectPopupWindow$CursorController;,
        Landroid/widget/MultiSelectPopupWindow$PositionListener;,
        Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;,
        Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MultiSelectPopupWindow"

.field private static final blacklist TEMP_POSITION:[F

.field private static final blacklist TW_MENU_ITEM_ORDER_CLOSE:I = 0x0

.field private static final blacklist TW_MENU_ITEM_ORDER_COPY:I = 0x2

.field private static final blacklist TW_MENU_ITEM_ORDER_DICTIONARY:I = 0x4

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

.method static bridge synthetic blacklist -$$Nest$mgetPositionListener(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;
    .locals 0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misDictionaryEnable(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isDictionaryEnable()Z

    move-result p0

    return p0
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

    .line 406
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->TEMP_POSITION:[F

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/MultiSelectPopupWindow$1;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 93
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    .line 94
    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    .line 95
    return-void
.end method

.method public static blacklist getInstance()Landroid/widget/MultiSelectPopupWindow;
    .locals 1

    .line 86
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {v0}, Landroid/widget/MultiSelectPopupWindow;-><init>()V

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    .line 89
    :cond_0
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    return-object v0
.end method

.method private blacklist getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    .locals 2

    .line 412
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/MultiSelectPopupWindow$PositionListener;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$PositionListener-IA;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    .line 415
    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    return-object v0
.end method

.method private blacklist hideFloatingToolbar()V
    .locals 3

    .line 153
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 155
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 157
    :cond_0
    return-void
.end method

.method private blacklist isDictionaryEnable()Z
    .locals 4

    .line 365
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 366
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 368
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    const/4 v2, 0x1

    return v2

    .line 372
    :cond_0
    return v2
.end method

.method private blacklist isEmergencyMode()Z
    .locals 5

    .line 393
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

    .line 394
    .local v0, "isEmergencyMode":Z
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

    .line 396
    .local v3, "isUPSMode":Z
    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 400
    :cond_2
    return v2

    .line 397
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

    .line 398
    return v1
.end method

.method private blacklist isSelectAllEnable()Z
    .locals 4

    .line 348
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 349
    .local v0, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 350
    const-string v2, "MultiSelectPopupWindow"

    const-string v3, "getTextFormultiSelection() text is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return v1

    .line 353
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

    .line 357
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x0

    return v0

    .line 360
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isTranslatorEnable()Z
    .locals 7

    .line 377
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 378
    .local v0, "pm":Landroid/content/pm/PackageManager;
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

    .line 380
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 381
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 382
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "resolveInfoString":Ljava/lang/String;
    const-string v6, "com.sec.android.app.translator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.google.android.apps.translate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 386
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "resolveInfoString":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 384
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "resolveInfoString":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 388
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "resolveInfoString":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method private blacklist showFloatingToolbar()V
    .locals 5

    .line 160
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 164
    .local v0, "delay":I
    sget-object v1, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    .end local v0    # "delay":I
    :cond_0
    return-void
.end method

.method private blacklist updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 169
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 172
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->hideFloatingToolbar()V

    .line 173
    goto :goto_0

    .line 177
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->showFloatingToolbar()V

    .line 180
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
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 131
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    sput-object p1, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    .line 135
    return-void
.end method

.method blacklist getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;
    .locals 2

    .line 425
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 426
    return-object v1

    .line 428
    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

    if-nez v0, :cond_1

    .line 429
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$SelectionController;

    invoke-direct {v0, p0, v1}, Landroid/widget/MultiSelectPopupWindow$SelectionController;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$SelectionController-IA;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

    .line 431
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 432
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 435
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectionController:Landroid/widget/MultiSelectPopupWindow$SelectionController;

    return-object v0
.end method

.method public blacklist hideMultiSelectPopupWindow()V
    .locals 1

    .line 118
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->hide()V

    .line 122
    :cond_0
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 125
    :cond_1
    return-void
.end method

.method public blacklist initSelectionControllerPosition()V
    .locals 1

    .line 419
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->initPreviousOffset()V

    .line 422
    :cond_0
    return-void
.end method

.method blacklist onScrollChanged()V
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->onScrollChanged()V

    .line 141
    :cond_0
    return-void
.end method

.method public blacklist showMultiSelectPopupWindow()V
    .locals 3

    .line 99
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->hide()V

    .line 101
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->show()V

    .line 104
    :cond_0
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 107
    return-void

    .line 110
    :cond_1
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;-><init>(Landroid/widget/MultiSelectPopupWindow;Z)V

    .line 111
    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    sget-object v2, Landroid/widget/MultiSelectPopupWindow;->sTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    sput-object v1, Landroid/widget/MultiSelectPopupWindow;->sTextActionMode:Landroid/view/ActionMode;

    .line 112
    return-void
.end method
