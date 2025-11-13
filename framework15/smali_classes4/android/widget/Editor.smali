.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$UndoInputFilter;,
        Landroid/widget/Editor$CursorAnchorInfoNotifier;,
        Landroid/widget/Editor$SuggestionHelper;,
        Landroid/widget/Editor$ProcessTextIntentActionsHandler;,
        Landroid/widget/Editor$AccessibilitySmartActions;,
        Landroid/widget/Editor$MagnifierMotionAnimator;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$TextRenderNode;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$InsertModeController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$TextActionModeCallback;,
        Landroid/widget/Editor$TextActionMode;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$AssistantCallbackHelper;,
        Landroid/widget/Editor$SuggestionInfo;,
        Landroid/widget/Editor$SuggestionSpanInfo;,
        Landroid/widget/Editor$EditOperation;,
        Landroid/widget/Editor$SelectionHandleView;,
        Landroid/widget/Editor$HandleType;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$MagnifierHandleTrigger;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_ASSIST:I = 0x1

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_AUTOFILL:I = 0xf

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_COPY:I = 0x5

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_CUT:I = 0x4

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_MANAGE_APP:I = 0x65

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_PASTE:I = 0x6

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_PASTE_AS_PLAIN_TEXT:I = 0x7

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_REDO:I = 0xc

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_REPLACE:I = 0xe

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_SECONDARY_ASSIST_ACTIONS_START:I = 0x32

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_SELECT_ALL:I = 0x9

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_SHARE:I = 0xa

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_SSS_TRANSLATE:I = 0x8

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_TRANSLATE:I = 0x10

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_UNDO:I = 0xb

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_WEBSEARCH:I = 0xd

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_WRITING_TOOLKIT:I = 0x0

.field static final greylist-max-o BLINK:I = 0x1f4

.field private static final blacklist CONTEXT_MENU_GROUP_CLIPBOARD:I = 0x2

.field private static final blacklist CONTEXT_MENU_GROUP_MISC:I = 0x3

.field private static final blacklist CONTEXT_MENU_GROUP_UNDO_REDO:I = 0x1

.field private static final blacklist CONTEXT_MENU_ITEM_ORDER_REPLACE:I = 0xb

.field private static final blacklist CURSOR_START_FLOAT_DISTANCE_PX:I = 0x14

.field private static final greylist-max-o DEBUG_UNDO:Z = false

.field private static final blacklist DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field private static final greylist-max-o DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x14

.field static final greylist-max-o EXTRACT_NOTHING:I = -0x2

.field static final greylist-max-o EXTRACT_UNKNOWN:I = -0x1

.field private static final blacklist FLAG_MISSPELLED_OR_GRAMMAR_ERROR:I = 0xa

.field private static final greylist-max-o FLAG_USE_MAGNIFIER:Z = true

.field public static final greylist-max-o HANDLE_TYPE_SELECTION_END:I = 0x1

.field public static final greylist-max-o HANDLE_TYPE_SELECTION_START:I = 0x0

.field private static final blacklist LINE_CHANGE_SLOP_MAX_DP:I = 0x2d

.field private static final blacklist LINE_CHANGE_SLOP_MIN_DP:I = 0x8

.field private static final blacklist MAX_LINE_HEIGHT_FOR_MAGNIFIER:I = 0x20

.field private static final blacklist MIN_LINE_HEIGHT_FOR_MAGNIFIER:I = 0x14

.field private static final blacklist RECENT_CUT_COPY_DURATION_MS:I = 0x3a98

.field private static final blacklist SHADOW_VIEW_MAX_WIDTH:F = 0.75f

.field private static final blacklist SHADOW_VIEW_MAX_WIDTH_TABLET:F = 0.55f

.field private static final blacklist SHADOW_VIEW_WIDTH_RESTRICT_DP:I = 0x1e0

.field private static final blacklist SWITCH_CONTROL_ENABLED:Ljava/lang/String; = "universal_switch_enabled"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Editor"

.field private static final blacklist TAG_LAG:Ljava/lang/String; = "PF_LAG"

.field private static final blacklist TW_MENU_ITEM_ORDER_CLIPBOARD:I = 0x13

.field private static final blacklist TW_MENU_ITEM_ORDER_HBD_TRANSLATE:I = 0x11

.field private static final blacklist TW_MENU_ITEM_ORDER_SCAN_TEXT:I = 0x12

.field private static final greylist-max-o UNDO_OWNER_TAG:Ljava/lang/String; = "Editor"

.field private static final greylist-max-o UNSET_LINE:I = -0x1

.field private static final greylist-max-o UNSET_X_VALUE:I = -0x1

.field private static final blacklist mDisableDoubleTapTextSelection:Z


# instance fields
.field private blacklist SEP_VERSION:Ljava/lang/Float;

.field private final blacklist mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

.field greylist-max-o mAllowUndo:Z

.field private final blacklist mBackCallback:Landroid/window/OnBackInvokedCallback;

.field private blacklist mBackCallbackRegistered:Z

.field private greylist-max-o mBlink:Landroid/widget/Editor$Blink;

.field private greylist-max-o mContextMenuAnchorX:F

.field private greylist-max-o mContextMenuAnchorY:F

.field private greylist-max-o mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field greylist-max-r mCreatedWithASelection:Z

.field private final greylist-max-o mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

.field private blacklist mCursorDragDirectionMinXYRatio:F

.field greylist-max-o mCursorVisible:Z

.field greylist-max-o mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

.field greylist-max-o mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field private final blacklist mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

.field private blacklist mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field greylist-max-o mDiscardNextActionUp:Z

.field private blacklist mDrawCursorOnMagnifier:Z

.field greylist-max-o mDrawableForCursor:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mError:Ljava/lang/CharSequence;

.field private greylist-max-o mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field greylist-max-o mErrorWasChanged:Z

.field private blacklist mFlagCursorDragFromAnywhereEnabled:Z

.field private blacklist mFlagInsertionHandleGesturesEnabled:Z

.field greylist-max-o mFrozenWithFocus:Z

.field private final greylist-max-o mHapticTextHandleEnabled:Z

.field private blacklist mHasPendingRestartInputForSetText:Z

.field greylist-max-o mIgnoreActionUpEvent:Z

.field greylist-max-o mInBatchEditControllers:Z

.field private blacklist mInitialZoom:F

.field greylist-max-o mInputContentType:Landroid/widget/Editor$InputContentType;

.field greylist-max-o mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field greylist-max-o mInputType:I

.field private blacklist mInsertModeController:Landroid/widget/Editor$InsertModeController;

.field private greylist-max-o mInsertionActionModeRunnable:Ljava/lang/Runnable;

.field private greylist mInsertionControllerEnabled:Z

.field greylist-max-o mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field greylist-max-o mIsBeingLongClicked:Z

.field blacklist mIsBeingLongClickedByAccessibility:Z

.field greylist-max-o mIsInsertionActionModeStartPending:Z

.field private blacklist mIsMagnifierHideByVelocityTracker:Z

.field blacklist mIsSelectedByLongClick:Z

.field private blacklist mIsThemeDeviceDefault:Z

.field greylist-max-o mKeyListener:Landroid/text/method/KeyListener;

.field private greylist-max-o mLastButtonState:I

.field private blacklist mLineChangeSlopMax:I

.field private blacklist mLineChangeSlopMin:I

.field private final blacklist mLineSlopRatio:F

.field private greylist-max-o mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

.field private final greylist-max-o mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private blacklist mMaxLineHeightForMagnifier:I

.field private final greylist-max-o mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private blacklist mMinLineHeightForMagnifier:I

.field private final blacklist mNewMagnifierEnabled:Z

.field private final greylist-max-o mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private greylist-max-o mPositionListener:Landroid/widget/Editor$PositionListener;

.field private greylist-max-o mPreserveSelection:Z

.field final greylist-max-o mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

.field private greylist-max-o mRenderCursorRegardlessTiming:Z

.field private greylist-max-o mRequestingLinkActionMode:Z

.field private greylist-max-o mRestartActionModeOnNextRefresh:Z

.field greylist-max-o mSelectAllOnFocus:Z

.field greylist-max-p mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field greylist-max-p mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field greylist-max-p mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

.field private greylist mSelectionControllerEnabled:Z

.field greylist-max-o mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field greylist-max-o mSelectionMoved:Z

.field private greylist-max-p mShowCursor:J

.field private greylist-max-o mShowErrorAfterAttach:Z

.field private final greylist-max-o mShowFloatingToolbar:Ljava/lang/Runnable;

.field private blacklist mShowMagnifier:Z

.field greylist-max-r mShowSoftInputOnFocus:Z

.field private blacklist mShowSoftInputOnFocusInternal:Z

.field private greylist-max-o mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mSpanController:Landroid/widget/Editor$SpanController;

.field greylist-max-o mSpellChecker:Landroid/widget/SpellChecker;

.field private final greylist-max-o mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

.field greylist-max-o mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field private greylist-max-o mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTextActionMode:Landroid/view/ActionMode;

.field greylist-max-o mTextIsSelectable:Z

.field private greylist-max-o mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

.field private final greylist-max-o mTextView:Landroid/widget/TextView;

.field private blacklist mToggleActionMode:Z

.field greylist-max-o mTouchFocusSelected:Z

.field private final blacklist mTouchState:Landroid/widget/EditorTouchState;

.field final greylist-max-o mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

.field private final greylist-max-o mUndoManager:Landroid/content/UndoManager;

.field private greylist-max-o mUndoOwner:Landroid/content/UndoOwner;

.field private final greylist-max-o mUpdateMagnifierRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mUpdateWordIteratorText:Z

.field private blacklist mUseCtxMenuInDesktopMode:Z

.field private blacklist mUseNewContextMenu:Z

.field private blacklist mWasBlinking:Z

.field private blacklist mWasSIPShowing:Z

.field private greylist-max-o mWordIterator:Landroid/text/method/WordIterator;

.field private greylist-max-o mWordIteratorWithText:Landroid/text/method/WordIterator;

.field private final blacklist mYVelocityThreshold:F

.field private blacklist mhadWindowFocus:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$GRBrITjWGGT8h7sSZa63vDb9MPs(Landroid/widget/Editor;Landroid/widget/Editor$AssistantCallbackHelper;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->lambda$setAssistContextMenuItems$1(Landroid/widget/Editor$AssistantCallbackHelper;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$wQ33dZlDHVA0D7aARwa214iyOhk(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->lambda$startActionModeInternal$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetSEP_VERSION(Landroid/widget/Editor;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->SEP_VERSION:Ljava/lang/Float;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmA11ySmartActions(Landroid/widget/Editor;)Landroid/widget/Editor$AccessibilitySmartActions;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorDragDirectionMinXYRatio(Landroid/widget/Editor;)F
    .locals 0

    iget p0, p0, Landroid/widget/Editor;->mCursorDragDirectionMinXYRatio:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor;->mDrawCursorOnMagnifier:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlagCursorDragFromAnywhereEnabled(Landroid/widget/Editor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHapticTextHandleEnabled(Landroid/widget/Editor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor;->mHapticTextHandleEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialZoom(Landroid/widget/Editor;)F
    .locals 0

    iget p0, p0, Landroid/widget/Editor;->mInitialZoom:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsMagnifierHideByVelocityTracker(Landroid/widget/Editor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor;->mIsMagnifierHideByVelocityTracker:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsThemeDeviceDefault(Landroid/widget/Editor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxLineHeightForMagnifier(Landroid/widget/Editor;)I
    .locals 0

    iget p0, p0, Landroid/widget/Editor;->mMaxLineHeightForMagnifier:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinLineHeightForMagnifier(Landroid/widget/Editor;)I
    .locals 0

    iget p0, p0, Landroid/widget/Editor;->mMinLineHeightForMagnifier:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor;->mNewMagnifierEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreserveSelection(Landroid/widget/Editor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowMagnifier(Landroid/widget/Editor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuggestionHelper(Landroid/widget/Editor;)Landroid/widget/Editor$SuggestionHelper;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpdateMagnifierRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor;->mUpdateMagnifierRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseCtxMenuInDesktopMode(Landroid/widget/Editor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCorrectionHighlighter(Landroid/widget/Editor;Landroid/widget/Editor$CorrectionHighlighter;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDrawCursorOnMagnifier(Landroid/widget/Editor;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mDrawCursorOnMagnifier:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInsertionActionModeRunnable(Landroid/widget/Editor;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsMagnifierHideByVelocityTracker(Landroid/widget/Editor;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mIsMagnifierHideByVelocityTracker:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreserveSelection(Landroid/widget/Editor;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRenderCursorRegardlessTiming(Landroid/widget/Editor;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestingLinkActionMode(Landroid/widget/Editor;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShowMagnifier(Landroid/widget/Editor;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTempRect(Landroid/widget/Editor;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTextActionMode(Landroid/widget/Editor;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmToggleActionMode(Landroid/widget/Editor;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclampHorizontalPosition(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdismissMagnifierForDrag(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->dismissMagnifierForDrag()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mextractedTextModeWillBeStarted(Landroid/widget/Editor;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindEquivalentSuggestionSpan(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInputMethodManager(Landroid/widget/Editor;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->getMagnifierAnimator()Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNextCursorOffset(Landroid/widget/Editor;IZ)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetParagraphsRange(Landroid/widget/Editor;II)J
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSelectionActionModeHelper(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWordEnd(Landroid/widget/Editor;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordEnd(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWordIteratorWithText(Landroid/widget/Editor;)Landroid/text/method/WordIterator;
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWordStart(Landroid/widget/Editor;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordStart(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$minvalidateActionMode(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misCursorInsideEasyCorrectionSpan(Landroid/widget/Editor;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misOffsetVisible(Landroid/widget/Editor;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPositionOnText(Landroid/widget/Editor;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misUniversalSwitchEnable(Landroid/widget/Editor;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->isUniversalSwitchEnable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreplaceWithSuggestion(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresumeBlink(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mselectCurrentParagraph(Landroid/widget/Editor;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentParagraph()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mselectCurrentWordAndStartDrag(Landroid/widget/Editor;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendUpdateSelection(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldBlink(Landroid/widget/Editor;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartDragAndDrop(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msuspendBlink(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtoggleInsertionActionMode(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->toggleInsertionActionMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateFloatingToolbarVisibility(Landroid/widget/Editor;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateMagnifierForDrag(Landroid/widget/Editor;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateMagnifierForDrag(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSpellCheckSpans(Landroid/widget/Editor;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateWritingToolkit(Landroid/widget/Editor;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->updateWritingToolkit()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmDisableDoubleTapTextSelection()Z
    .locals 1

    sget-boolean v0, Landroid/widget/Editor;->mDisableDoubleTapTextSelection:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidRange(Ljava/lang/CharSequence;II)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_DisableDoubleTapTextSelection"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/Editor;->mDisableDoubleTapTextSelection:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/widget/TextView;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/TextViewOnReceiveContentListener;

    invoke-direct {v0}, Landroid/widget/TextViewOnReceiveContentListener;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

    new-instance v0, Landroid/content/UndoManager;

    invoke-direct {v0}, Landroid/content/UndoManager;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string v1, "Editor"

    invoke-virtual {v0, v1, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    new-instance v0, Landroid/widget/Editor$UndoInputFilter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Landroid/widget/Editor;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/widget/Editor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/Editor$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    new-instance v2, Landroid/widget/Editor$1;

    invoke-direct {v2, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object v2, p0, Landroid/widget/Editor;->mUpdateMagnifierRunnable:Ljava/lang/Runnable;

    new-instance v2, Landroid/widget/Editor$2;

    invoke-direct {v2, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    iput-object v2, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    iput-boolean v1, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    iput v1, p0, Landroid/widget/Editor;->mInputType:I

    iput-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/widget/Editor;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-boolean v0, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    iput-boolean v1, p0, Landroid/widget/Editor;->mhadWindowFocus:Z

    new-instance v3, Landroid/widget/EditorTouchState;

    invoke-direct {v3}, Landroid/widget/EditorTouchState;-><init>()V

    iput-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    new-instance v3, Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-direct {v3, p0, v2}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$CursorAnchorInfoNotifier-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    new-instance v3, Landroid/widget/Editor$3;

    invoke-direct {v3, p0}, Landroid/widget/Editor$3;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    new-instance v3, Landroid/widget/Editor$SuggestionHelper;

    invoke-direct {v3, p0, v2}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionHelper-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/Editor;->mInitialZoom:F

    iput-boolean v1, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    const-string v3, "16.0"

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/Editor;->SEP_VERSION:Ljava/lang/Float;

    iput-boolean v1, p0, Landroid/widget/Editor;->mWasBlinking:Z

    iput-boolean v1, p0, Landroid/widget/Editor;->mWasSIPShowing:Z

    iput-boolean v1, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    iput-boolean v1, p0, Landroid/widget/Editor;->mShowSoftInputOnFocusInternal:Z

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Landroid/widget/Editor;->mYVelocityThreshold:F

    iput-boolean v1, p0, Landroid/widget/Editor;->mIsMagnifierHideByVelocityTracker:Z

    new-instance v4, Landroid/widget/Editor$5;

    invoke-direct {v4, p0}, Landroid/widget/Editor$5;-><init>(Landroid/widget/Editor;)V

    iput-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    new-instance v4, Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-direct {v4, p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$ProcessTextIntentActionsHandler-IA;)V

    iput-object v4, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    new-instance v4, Landroid/widget/Editor$AccessibilitySmartActions;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v4, v5, v2}, Landroid/widget/Editor$AccessibilitySmartActions;-><init>(Landroid/widget/TextView;Landroid/widget/Editor$AccessibilitySmartActions-IA;)V

    iput-object v4, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1110175

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/Editor;->mHapticTextHandleEnabled:Z

    const-string/jumbo v2, "widget__enable_cursor_drag_from_anywhere"

    invoke-static {v2, v0}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    const-string/jumbo v2, "widget__min_angle_from_vertical_to_start_cursor_drag"

    const/16 v4, 0x2d

    invoke-static {v2, v4}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Landroid/widget/EditorTouchState;->getXYRatio(I)F

    move-result v4

    iput v4, p0, Landroid/widget/Editor;->mCursorDragDirectionMinXYRatio:F

    const-string/jumbo v4, "widget__enable_insertion_handle_gestures"

    invoke-static {v4, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iput-boolean v4, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    const-string/jumbo v4, "widget__enable_new_magnifier"

    invoke-static {v4, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    iput-boolean v4, p0, Landroid/widget/Editor;->mNewMagnifierEnabled:Z

    const-string/jumbo v4, "widget__line_slop_ratio"

    invoke-static {v4, v3}, Landroid/app/AppGlobals;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Landroid/widget/Editor;->mLineSlopRatio:F

    const-string/jumbo v3, "text__enable_new_context_menu"

    invoke-static {v3, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v0

    :cond_3
    iput-boolean v1, p0, Landroid/widget/Editor;->mUseNewContextMenu:Z

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v3, 0x42340000    # 45.0f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/Editor;->mLineChangeSlopMax:I

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Editor;->mLineChangeSlopMin:I

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isThemeDeviceDefault()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    return-void
.end method

.method private blacklist canPrintLagLog()Z
    .locals 2

    const-string/jumbo v0, "persist.keyboard.enable_write_lagLog"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private greylist-max-o chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 7

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050593

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p2, v5, v3, v4, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/widget/TextView;->isFallbackLineSpacingForStaticLayout()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method private greylist-max-o clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I
    .locals 7

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v1, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    int-to-float v2, v1

    sub-float v2, p2, v2

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_2

    add-int v4, v3, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v0, v5

    sub-int/2addr v4, v5

    goto :goto_2

    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v5

    if-lez v4, :cond_4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v4, 0x100000

    sub-int/2addr v4, v1

    int-to-float v4, v4

    int-to-float v6, v3

    add-float/2addr v6, v5

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_3

    cmpg-float v4, p2, v5

    if-gtz v4, :cond_3

    goto :goto_1

    :cond_3
    float-to-int v4, p2

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v4, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v4

    :goto_2
    return v4
.end method

.method private blacklist createBuilderWithInlineMagnifierDefaults()Landroid/widget/Magnifier$Builder;
    .locals 14

    new-instance v0, Landroid/widget/Magnifier$Builder;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/Magnifier$Builder;-><init>(Landroid/view/View;)V

    const-string/jumbo v1, "widget__magnifier_zoom_factor"

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v1, v2}, Landroid/app/AppGlobals;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v1

    const-string/jumbo v2, "widget__magnifier_aspect_ratio"

    const/high16 v3, 0x40b00000    # 5.5f

    invoke-static {v2, v3}, Landroid/app/AppGlobals;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v2

    const v3, 0x3f99999a    # 1.2f

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_0

    const v3, 0x3fe66666    # 1.8f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    :cond_0
    const/high16 v1, 0x3fc00000    # 1.5f

    :cond_1
    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_2

    const/high16 v3, 0x41000000    # 8.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    :cond_2
    const/high16 v2, 0x40b00000    # 5.5f

    :cond_3
    iput v1, p0, Landroid/widget/Editor;->mInitialZoom:F

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Editor;->mMinLineHeightForMagnifier:I

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Editor;->mMaxLineHeightForMagnifier:I

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStartTransformed()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v7

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v8, v7

    mul-float/2addr v8, v1

    float-to-int v8, v8

    iget v9, p0, Landroid/widget/Editor;->mMinLineHeightForMagnifier:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v9, v9

    invoke-virtual {v0}, Landroid/widget/Magnifier$Builder;->setFishEyeStyle()Landroid/widget/Magnifier$Builder;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Landroid/widget/Magnifier$Builder;->setSize(II)Landroid/widget/Magnifier$Builder;

    move-result-object v10

    invoke-virtual {v10, v9, v7}, Landroid/widget/Magnifier$Builder;->setSourceSize(II)Landroid/widget/Magnifier$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Magnifier$Builder;->setElevation(F)Landroid/widget/Magnifier$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/widget/Magnifier$Builder;->setInitialZoom(F)Landroid/widget/Magnifier$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/widget/Magnifier$Builder;->setClippingEnabled(Z)Landroid/widget/Magnifier$Builder;

    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/android/internal/R$styleable;->Magnifier:[I

    const v12, 0x11200a3

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v11, v12, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    nop

    const/4 v12, 0x3

    invoke-virtual {v11, v12, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    const/4 v13, 0x4

    invoke-virtual {v11, v13, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    invoke-virtual {v0, v12, v13}, Landroid/widget/Magnifier$Builder;->setDefaultSourceToMagnifierOffset(II)Landroid/widget/Magnifier$Builder;

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0, v4, v6, v4, v6}, Landroid/widget/Magnifier$Builder;->setSourceBounds(IIII)Landroid/widget/Magnifier$Builder;

    move-result-object v4

    return-object v4
.end method

.method private blacklist deleteSourceAfterLocalDrop(Landroid/widget/Editor$DragLocalState;II)V
    .locals 7

    iget v0, p1, Landroid/widget/Editor$DragLocalState;->start:I

    iget v1, p1, Landroid/widget/Editor$DragLocalState;->end:I

    if-gt p2, v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->deleteText_internal(II)V

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    if-le v4, v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v4}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v2, v6}, Landroid/widget/TextView;->deleteText_internal(II)V

    :cond_1
    return-void
.end method

.method private greylist-max-o discardTextDisplayLists()V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/graphics/RenderNode;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->discardDisplayList()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist dismissMagnifierForDrag()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mdismiss(Landroid/widget/Editor$MagnifierMotionAnimator;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    :cond_0
    return-void
.end method

.method private greylist-max-o downgradeEasyCorrectionSpans()V
    .locals 6

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    nop

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/SuggestionSpan;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_0

    and-int/lit8 v5, v4, 0xa

    if-nez v5, :cond_0

    and-int/lit8 v4, v4, -0x2

    aget-object v5, v2, v3

    invoke-virtual {v5, v4}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist drawCursor(Landroid/graphics/Canvas;II)V
    .locals 3

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    if-eqz v0, :cond_4

    neg-int v1, p2

    int-to-float v1, v1

    neg-int v2, p3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    return-void
.end method

.method private blacklist drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;IZ)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "IZ)V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v13, v12}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v14

    invoke-static {v14, v15}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v10

    invoke-static {v14, v15}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v9

    if-gez v9, :cond_0

    return-void

    :cond_0
    if-nez p8, :cond_1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move v7, v10

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Landroid/text/Layout;->drawWithoutText(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    goto :goto_0

    :cond_1
    invoke-virtual {v13, v12, v10, v9}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    :goto_0
    instance-of v0, v13, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_e

    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-nez v0, :cond_2

    const-class v0, Landroid/widget/Editor$TextRenderNode;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/Editor$TextRenderNode;

    iput-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    :cond_2
    move-object v8, v13

    check-cast v8, Landroid/text/DynamicLayout;

    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v7

    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v16

    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v6

    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    move-result v5

    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;

    move-result-object v4

    const/4 v3, -0x1

    const/4 v2, 0x1

    if-eqz v4, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    iget-object v3, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    iget-object v3, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v1

    iput-boolean v2, v3, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    const/4 v3, -0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-static {v7, v0, v6, v10}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-gez v0, :cond_5

    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    :cond_5
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    const/4 v0, 0x0

    move/from16 v19, v6

    move/from16 v1, v18

    move/from16 v20, v0

    move v3, v1

    :goto_2
    if-ge v3, v6, :cond_9

    aget v1, v16, v3

    if-lt v3, v5, :cond_6

    const/4 v0, -0x1

    if-eq v1, v0, :cond_6

    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v1

    iput-boolean v2, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    :cond_6
    aget v0, v7, v3

    if-ge v0, v10, :cond_7

    move/from16 v22, v2

    move/from16 v17, v3

    move/from16 v25, v6

    move-object/from16 v26, v7

    move-object v12, v8

    move v13, v9

    move/from16 v27, v10

    move-wide/from16 v23, v14

    move-object v15, v4

    move v14, v5

    goto :goto_3

    :cond_7
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object/from16 v1, p1

    move/from16 v22, v2

    move-object/from16 v2, p2

    move-wide/from16 v23, v14

    move/from16 v14, v17

    move/from16 v17, v3

    move-object/from16 v3, p5

    move-object v15, v4

    move-object/from16 v4, p6

    move v14, v5

    move/from16 v5, p7

    move/from16 v25, v6

    move-object v6, v7

    move-object/from16 v26, v7

    move-object/from16 v7, v16

    move-object v12, v8

    move/from16 v8, v17

    move v13, v9

    move/from16 v9, v25

    move/from16 v27, v10

    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    move-result v20

    aget v0, v26, v17

    if-lt v0, v13, :cond_8

    add-int/lit8 v3, v17, 0x1

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v10, v19

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 v3, v17, 0x1

    move-object v8, v12

    move v9, v13

    move v5, v14

    move-object v4, v15

    move/from16 v2, v22

    move-wide/from16 v14, v23

    move/from16 v6, v25

    move-object/from16 v7, v26

    move/from16 v10, v27

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    goto :goto_2

    :cond_9
    move/from16 v17, v3

    move/from16 v25, v6

    move-object/from16 v26, v7

    move-object v12, v8

    move v13, v9

    move/from16 v27, v10

    move-wide/from16 v23, v14

    move-object v15, v4

    move v14, v5

    move/from16 v10, v19

    :goto_4
    if-eqz v15, :cond_d

    const/4 v0, 0x0

    move v9, v0

    :goto_5
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v9, v0, :cond_c

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    move-result v7

    const/4 v6, -0x1

    if-eq v7, v6, :cond_b

    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v7

    if-eqz v0, :cond_b

    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v7

    iget-boolean v0, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    move/from16 v17, v6

    move/from16 v22, v9

    move v11, v10

    goto :goto_7

    :cond_b
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v17, v6

    move-object/from16 v6, v26

    move/from16 v19, v7

    move-object/from16 v7, v16

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v9, v25

    move v11, v10

    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    move-result v20

    :goto_7
    add-int/lit8 v9, v22, 0x1

    move v10, v11

    move-object/from16 v11, p0

    goto :goto_5

    :cond_c
    move/from16 v22, v9

    move v11, v10

    goto :goto_8

    :cond_d
    move v11, v10

    :goto_8
    invoke-virtual {v12, v11}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move v12, v13

    move/from16 v11, v27

    goto :goto_9

    :cond_e
    move v13, v9

    move/from16 v27, v10

    move-wide/from16 v23, v14

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move v12, v13

    move/from16 v11, v27

    invoke-virtual {v10, v9, v11, v12}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    :goto_9
    if-eqz p8, :cond_f

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move v7, v11

    move v8, v12

    invoke-virtual/range {v0 .. v8}, Landroid/text/Layout;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    :cond_f
    return-void
.end method

.method private greylist-max-o drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    aget v4, p6, p8

    aget v0, v3, p8

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v0, v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct {v1, v3, v8, v9}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v0

    aput v0, v3, p8

    iget-object v10, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v10, v10, v0

    if-eqz v10, :cond_1

    iget-object v10, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v10, v10, v0

    iput-boolean v6, v10, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    :cond_1
    add-int/lit8 v9, v0, 0x1

    move v10, v0

    goto :goto_1

    :cond_2
    move/from16 v8, p9

    move/from16 v9, p10

    move v10, v0

    :goto_1
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    if-nez v0, :cond_3

    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    new-instance v11, Landroid/widget/Editor$TextRenderNode;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Text "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/Editor$TextRenderNode;-><init>(Ljava/lang/String;)V

    aput-object v11, v0, v10

    :cond_3
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/widget/Editor$TextRenderNode;->needsRecord()Z

    move-result v11

    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    iget-object v12, v0, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/graphics/RenderNode;

    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    iget-boolean v0, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    if-nez v0, :cond_5

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v16, v5

    goto/16 :goto_7

    :cond_5
    :goto_2
    if-nez p8, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v0, p8, -0x1

    aget v0, p6, v0

    add-int/2addr v0, v6

    :goto_3
    move v6, v0

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v14

    const/4 v0, 0x0

    iget-object v15, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v15

    iget-object v7, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v7

    if-eqz v7, :cond_8

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/16 v16, 0x1

    move/from16 v17, v6

    move/from16 p10, v0

    move/from16 v0, v16

    move/from16 v3, v17

    :goto_4
    if-gt v3, v4, :cond_7

    move/from16 v16, v5

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v16

    goto :goto_4

    :cond_7
    move/from16 v16, v5

    float-to-int v3, v7

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v5, v0

    float-to-int v15, v5

    goto :goto_5

    :cond_8
    move/from16 p10, v0

    move/from16 v16, v5

    move/from16 v3, p10

    :goto_5
    if-eqz v11, :cond_a

    sub-int v0, v15, v3

    sub-int v5, v14, v13

    invoke-virtual {v12, v0, v5}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v5

    neg-int v0, v3

    int-to-float v0, v0

    neg-int v7, v13

    int-to-float v7, v7

    :try_start_0
    invoke-virtual {v5, v0, v7}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    invoke-virtual {v2, v5, v6, v4}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->canPrintLagLog()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "PF_LAG"

    const-string v7, "drawText"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/Editor$TextRenderNode;->isDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v12}, Landroid/graphics/RenderNode;->endRecording()V

    invoke-virtual {v12, v7}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    const/4 v7, 0x0

    goto :goto_6

    :catchall_0
    move-exception v0

    invoke-virtual {v12}, Landroid/graphics/RenderNode;->endRecording()V

    const/4 v7, 0x0

    invoke-virtual {v12, v7}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    throw v0

    :cond_a
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v12, v3, v13, v15, v14}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    iput-boolean v7, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    :goto_7
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    invoke-virtual {v0, v12}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    return v9
.end method

.method private blacklist drawLayout(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "IZ)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p8}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;IZ)V

    goto :goto_0

    :cond_0
    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :goto_0
    return-void
.end method

.method private greylist-max-o ensureNoSelectionIfNonSelectable()V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_0
    return-void
.end method

.method private greylist-max-o extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    if-nez p5, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq p2, v2, :cond_b

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gez p2, :cond_2

    const/4 v4, -0x1

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    const/4 p2, 0x0

    move p3, v2

    goto :goto_2

    :cond_2
    add-int/2addr p3, p4

    instance-of v4, v1, Landroid/text/Spanned;

    if-eqz v4, :cond_5

    move-object v4, v1

    check-cast v4, Landroid/text/Spanned;

    const-class v5, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-lez v6, :cond_5

    add-int/lit8 v6, v6, -0x1

    aget-object v7, v5, v6

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ge v7, p2, :cond_3

    move p2, v7

    :cond_3
    aget-object v8, v5, v6

    invoke-interface {v4, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-le v7, p3, :cond_4

    move p3, v7

    :cond_4
    goto :goto_0

    :cond_5
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    sub-int v4, p3, p4

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    if-le p2, v2, :cond_6

    move p2, v2

    goto :goto_1

    :cond_6
    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    :goto_1
    if-le p3, v2, :cond_8

    move p3, v2

    goto :goto_2

    :cond_8
    if-gez p3, :cond_9

    const/4 p3, 0x0

    :cond_9
    :goto_2
    iget v4, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_a

    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_a
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    :goto_3
    goto :goto_4

    :cond_b
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    const-string v2, ""

    iput-object v2, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    :goto_4
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    const/16 v2, 0x800

    invoke-static {v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    if-eqz v2, :cond_c

    iget v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    :cond_c
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v2

    if-eqz v2, :cond_d

    iget v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/2addr v2, v3

    iput v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    :cond_d
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p5, Landroid/view/inputmethod/ExtractedText;->hint:Ljava/lang/CharSequence;

    return v3

    :cond_e
    :goto_5
    return v0
.end method

.method private greylist-max-o extractedTextModeWillBeStarted()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private greylist-max-o findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .locals 8

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    return-object v1

    :cond_0
    iget v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    iget v2, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    const-class v3, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    iget v6, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    iget v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    if-eq v6, v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-virtual {v4, v7}, Landroid/text/style/SuggestionSpan;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    return-object v4

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist getActiveLayout()Landroid/text/Layout;
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private greylist-max-o getAvailableDisplayListIndex([III)I
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v0, v0

    move v1, p3

    :goto_0
    if-ge v1, v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_1

    aget v4, p1, v3

    if-ne v4, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/widget/Editor$TextRenderNode;

    iput-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    return v0
.end method

.method private greylist-max-o getCharClusterRange(I)J
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v2

    nop

    invoke-direct {p0, v2, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3

    :cond_0
    add-int/lit8 v3, p1, -0x1

    if-ltz v3, :cond_1

    invoke-direct {p0, p1, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v1

    nop

    invoke-direct {p0, v1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    :cond_1
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    return-wide v1
.end method

.method private greylist-max-o getErrorX()I
    .locals 6

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    if-eqz v1, :cond_1

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_0

    :pswitch_0
    if-eqz v1, :cond_0

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :cond_0
    div-int/lit8 v5, v5, 0x2

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v5, v3

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int/2addr v5, v3

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v5

    nop

    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o getErrorY()I
    .locals 10

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    if-eqz v2, :cond_1

    iget v4, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    :pswitch_0
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    sub-int v5, v1, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    add-int v7, v5, v4

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v6

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private greylist-max-o getLastTapPosition()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_0
    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o getLastTouchOffsets()J
    .locals 5

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3
.end method

.method private blacklist getMagnifierAnimator()Landroid/widget/Editor$MagnifierMotionAnimator;
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/Editor;->mNewMagnifierEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->createBuilderWithInlineMagnifierDefaults()Landroid/widget/Magnifier$Builder;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/Magnifier;->createBuilderWithOldMagnifierDefaults(Landroid/view/View;)Landroid/widget/Magnifier$Builder;

    move-result-object v0

    :goto_0
    nop

    new-instance v1, Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-virtual {v0}, Landroid/widget/Magnifier$Builder;->build()Landroid/widget/Magnifier;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/Editor$MagnifierMotionAnimator;-><init>(Landroid/widget/Magnifier;Landroid/widget/Editor$MagnifierMotionAnimator-IA;)V

    iput-object v1, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    return-object v0
.end method

.method private greylist-max-o getNextCursorOffset(IZ)I
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    if-ne p2, v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v3

    :goto_0
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v2}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result v2

    return v2
.end method

.method private greylist-max-o getParagraphsRange(II)J
    .locals 10

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v1, -0x1

    invoke-static {v1, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    :cond_0
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    :goto_0
    const/16 v6, 0xa

    if-lez v5, :cond_2

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_1

    goto :goto_1

    :cond_1
    nop

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    :goto_2
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    sub-int/2addr v8, v1

    if-ge v7, v8, :cond_4

    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    add-int/lit8 v9, v8, -0x1

    invoke-interface {v4, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_3

    goto :goto_3

    :cond_3
    nop

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v8

    invoke-virtual {v6, v8, v1}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result v6

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v9

    invoke-virtual {v8, v9, v1}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result v1

    invoke-static {v6, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8
.end method

.method private greylist-max-o getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$PositionListener-IA;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private greylist-max-o getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SelectionActionModeHelper;

    invoke-direct {v0, p0}, Landroid/widget/SelectionActionModeHelper;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    return-object v0
.end method

.method private greylist-max-o getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090186

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    iget v9, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    const/high16 v9, 0x43f00000    # 480.0f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_0

    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    const/high16 v10, 0x3f400000    # 0.75f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    goto :goto_0

    :cond_0
    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    const v10, 0x3f0ccccd    # 0.55f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    :goto_0
    const v10, 0x1050531

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x105052f

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v1, v13, v13}, Landroid/widget/FrameLayout;->measure(II)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    mul-int/lit8 v16, v11, 0x2

    sub-int v12, v14, v16

    mul-int/lit8 v16, v11, 0x2

    sub-int v16, v15, v16

    const/high16 v0, 0x40000000    # 2.0f

    if-le v12, v9, :cond_1

    mul-int/lit8 v18, v11, 0x2

    move-object/from16 v19, v3

    add-int v3, v9, v18

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move/from16 v18, v3

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/FrameLayout;->measure(II)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    move-object/from16 v18, v2

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v19, v3

    if-ge v12, v10, :cond_2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    int-to-float v4, v10

    mul-float/2addr v3, v4

    int-to-float v4, v12

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    mul-int/lit8 v4, v11, 0x2

    add-int/2addr v4, v10

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move-object/from16 v18, v2

    move/from16 v17, v3

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->measure(II)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    goto :goto_1

    :cond_2
    move-object/from16 v18, v2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2, v2, v14, v15}, Landroid/widget/FrameLayout;->layout(IIII)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_3
    move-object/from16 v18, v2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to inflate text drag thumbnail"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getWordEnd(I)I
    .locals 2

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationEnd(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    return v0
.end method

.method private greylist-max-o getWordIteratorWithText()Landroid/text/method/WordIterator;
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    iput-boolean v3, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method private greylist-max-o getWordStart(I)I
    .locals 2

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationBeginning(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    return v0
.end method

.method private greylist-max-o hideCursorControllers()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    return-void
.end method

.method private greylist-max-o hideError()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    return-void
.end method

.method private greylist-max-o hideSpanControllers()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    :cond_0
    return-void
.end method

.method private greylist-max-o invalidateActionMode()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method private greylist-max-o isCursorInsideEasyCorrectionSpan()Z
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    const-class v3, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private greylist-max-o isCursorVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o isOffsetVisible(I)Z
    .locals 8

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v7

    add-int/2addr v7, v3

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v5

    return v5
.end method

.method private greylist-max-o isPositionOnText(FF)Z
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getKeycodeDpadCenterStatus()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v2

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_4

    return v1

    :cond_4
    return v3
.end method

.method private blacklist isUniversalSwitchEnable()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_switch_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private static greylist-max-o isValidRange(Ljava/lang/CharSequence;II)Z
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$setAssistContextMenuItems$1(Landroid/widget/Editor$AssistantCallbackHelper;Landroid/view/MenuItem;)Z
    .locals 3

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/SelectionActionModeHelper;->onSelectionAction(ILjava/lang/String;)V

    iget-object v0, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performMenuItemAction(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v2, 0x1020041

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/Editor$AssistantCallbackHelper;->onAssistMenuItemClicked(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$startActionModeInternal$0()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    return-void
.end method

.method static varargs blacklist logCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const-string v0, "Editor"

    if-nez p1, :cond_0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private greylist-max-o needsToSelectAllToSelectWordOrParagraph()Z
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    and-int/lit8 v2, v0, 0xf

    and-int/lit16 v3, v0, 0xff0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd0

    if-eq v3, v4, :cond_2

    const/16 v4, 0xb0

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private blacklist obtainMagnifierShowCoordinatesForDrag(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z
    .locals 11

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    aget v6, v4, v2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollX()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    add-float/2addr v6, v8

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-static {v8}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Magnifier;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-static {v9}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Magnifier;->getZoom()F

    move-result v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v10, v8, v9

    sub-float v10, v6, v10

    cmpg-float v10, v5, v10

    if-ltz v10, :cond_2

    div-float v10, v8, v9

    add-float/2addr v10, v7

    cmpl-float v10, v5, v10

    if-lez v10, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    add-int/2addr v2, v10

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v2, v9

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v2, v9

    iput v2, p2, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x1

    return v2

    :cond_2
    :goto_0
    return v2
.end method

.method private blacklist registerOnBackInvokedCallback()V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-virtual {v1, v2, v3}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method private greylist-max-o replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-direct {v0, v2}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ltz v4, :cond_8

    if-gt v5, v4, :cond_1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    goto/16 :goto_3

    :cond_1
    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    const-class v7, Landroid/text/style/SuggestionSpan;

    invoke-interface {v3, v4, v5, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/SuggestionSpan;

    array-length v8, v7

    new-array v9, v8, [I

    new-array v10, v8, [I

    new-array v11, v8, [I

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v8, :cond_3

    aget-object v13, v7, v12

    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    aput v14, v9, v12

    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    aput v14, v10, v12

    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v14

    aput v14, v11, v12

    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v14

    and-int/lit8 v15, v14, 0xa

    if-eqz v15, :cond_2

    and-int/lit8 v14, v14, -0x3

    and-int/lit8 v14, v14, -0x9

    and-int/lit8 v14, v14, -0x2

    invoke-virtual {v13, v14}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    iget v12, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    iget v13, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    iget-object v14, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v14, v12, v13}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v4, v5, v14}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v2

    iget v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    aput-object v6, v15, v2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v17, v5, v4

    sub-int v2, v2, v17

    const/16 v17, 0x0

    move/from16 v1, v17

    :goto_1
    if-ge v1, v8, :cond_6

    move-object/from16 v17, v3

    aget v3, v9, v1

    if-gt v3, v4, :cond_5

    aget v3, v10, v1

    if-lt v3, v5, :cond_5

    aget v3, v10, v1

    add-int/2addr v3, v2

    move/from16 v18, v4

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-gt v3, v4, :cond_4

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    aget-object v4, v7, v1

    move-object/from16 v19, v6

    aget v6, v9, v1

    aget v20, v10, v1

    move-object/from16 v21, v7

    add-int v7, v20, v2

    move/from16 v20, v8

    aget v8, v11, v1

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_4
    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move/from16 v20, v8

    goto :goto_2

    :cond_5
    move/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move/from16 v20, v8

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v6, v19

    move/from16 v8, v20

    move-object/from16 v7, v21

    goto :goto_1

    :cond_6
    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move/from16 v20, v8

    add-int v1, v5, v2

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-le v1, v3, :cond_7

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v1

    :cond_7
    move v3, v1

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v3}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    return-void

    :cond_8
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    :goto_3
    return-void
.end method

.method private greylist-max-o resumeBlink()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    return-void
.end method

.method private greylist-max-o selectCurrentParagraph()Z
    .locals 9

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v4

    invoke-direct {p0, v0, v4}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    invoke-static {v5, v6}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v8

    if-ge v7, v8, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v7, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    const/4 v1, 0x1

    return v1

    :cond_2
    return v1
.end method

.method private greylist-max-o selectCurrentWordAndStartDrag()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v1, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    invoke-direct {p0}, Landroid/widget/Editor;->dismissMagnifierForDrag()V

    return v1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o sendUpdateSelection()V
    .locals 11

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iget v0, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    const/4 v1, -0x1

    const/4 v2, -0x1

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    invoke-static {v3}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    move v9, v1

    move v10, v2

    goto :goto_0

    :cond_0
    move v9, v1

    move v10, v2

    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object v1, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    :cond_1
    return-void
.end method

.method private blacklist setAssistContextMenuItems(Landroid/view/Menu;)V
    .locals 3

    nop

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/widget/Editor$AssistantCallbackHelper;

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/widget/Editor$AssistantCallbackHelper;-><init>(Landroid/widget/Editor;Landroid/widget/SelectionActionModeHelper;)V

    new-instance v2, Landroid/widget/Editor$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Landroid/widget/Editor$$ExternalSyntheticLambda3;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$AssistantCallbackHelper;)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/Editor$AssistantCallbackHelper;->updateAssistMenuItems(Landroid/view/Menu;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    return-void
.end method

.method private greylist-max-o setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView$Drawables;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    iput-object v2, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method private greylist-max-o shouldBlink()Z
    .locals 3

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-gez v2, :cond_2

    return v1

    :cond_2
    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method private greylist-max-o shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Landroid/widget/Editor;->mLastButtonState:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    xor-int/2addr v0, v4

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_3

    if-ne v4, v2, :cond_4

    :cond_3
    if-nez v0, :cond_4

    return v2

    :cond_4
    if-ne v4, v3, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v1
.end method

.method private greylist-max-o showError()V
    .locals 8

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    nop

    iget-boolean v2, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    if-eqz v2, :cond_1

    const v2, 0x10901db

    goto :goto_0

    :cond_1
    const v2, 0x10901ae

    :goto_0
    nop

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v7, 0x42480000    # 50.0f

    mul-float/2addr v7, v3

    add-float/2addr v7, v6

    float-to-int v6, v7

    invoke-direct {v4, v2, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v1}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v3

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v4

    const/16 v5, 0x33

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;III)V

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v2}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    return-void
.end method

.method private greylist-max-o showFloatingToolbar()V
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateActionModeAsync()V

    :cond_0
    return-void
.end method

.method private blacklist softInputShown()Z
    .locals 2

    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private greylist-max-o startDragAndDrop()V
    .locals 9

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->onSelectionDrag()V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    new-instance v4, Landroid/widget/Editor$DragLocalState;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v4, v5, v0, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    if-eqz v5, :cond_1

    const/16 v6, 0x6a

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    :cond_1
    const-string v6, "Editor"

    const-string/jumbo v7, "performSoundEffect: Couldn\'t get audio manager"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor;->getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;

    move-result-object v7

    const/16 v8, 0x300

    invoke-virtual {v6, v3, v7, v4, v8}, Landroid/widget/TextView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    :cond_2
    return-void
.end method

.method private greylist-max-o suspendBlink()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    :cond_0
    return-void
.end method

.method private blacklist toggleInsertionActionMode()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->startInsertionActionMode()V

    :goto_0
    return-void
.end method

.method private blacklist tooLargeTextForMagnifierForDrag()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-static {v1}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Magnifier;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-static {v2}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Magnifier;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v0, v4

    :cond_1
    return v0
.end method

.method private greylist-max-o touchPositionIsInSelection()Z
    .locals 6

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    if-le v0, v1, :cond_1

    move v3, v0

    move v0, v1

    move v1, v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v5

    if-lt v4, v0, :cond_2

    if-ge v5, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private blacklist unregisterOnBackInvokedCallback()V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-virtual {v1, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method private greylist-max-o updateCursorPosition(IIF)V
    .locals 12

    invoke-virtual {p0}, Landroid/widget/Editor;->loadCursorDrawable()V

    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p3}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v2, v1

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCursorThicknessScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/Editor$InsertionHandleView;->-$$Nest$mshouldMagnifierCursorAdjust(Landroid/widget/Editor$InsertionHandleView;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v3, 0x3e4ccccd    # 0.2f

    :cond_0
    sub-int v4, p2, p1

    int-to-float v5, v4

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int v6, p1, v5

    sub-int v7, p2, v5

    iget-object v8, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v9, v6, v9

    add-int v10, v0, v2

    iget-object v11, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v7

    invoke-virtual {v8, v0, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private greylist-max-o updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->hideFloatingToolbar(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->showFloatingToolbar()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist updateMagnifierForDrag(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-direct {p0}, Landroid/widget/Editor;->getMagnifierAnimator()Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p0}, Landroid/widget/Editor;->tooLargeTextForMagnifierForDrag()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, v0}, Landroid/widget/Editor;->obtainMagnifierShowCoordinatesForDrag(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iput-boolean v2, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidateCursorPath()V

    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    iget-object v2, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3, v4}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mshow(Landroid/widget/Editor$MagnifierMotionAnimator;FF)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->dismissMagnifierForDrag()V

    :goto_1
    return-void
.end method

.method private greylist-max-o updateSpellCheckSpans(IIZ)V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodSuppressingSpellChecker()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    new-instance v1, Landroid/widget/SpellChecker;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v1, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    :cond_2
    return-void
.end method

.method private blacklist updateWritingToolkit()V
    .locals 4

    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->usingWritingToolkit()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "newSelection"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const-string v3, "actionUpdateToolKitHbd"

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o addSpanWatchers(Landroid/text/Spannable;)V
    .locals 5

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/Editor$SpanController;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SpanController-IA;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public blacklist adjustIconSpacing(Landroid/view/ContextMenu;)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_5

    if-gez v1, :cond_2

    goto :goto_3

    :cond_2
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    const/4 v3, 0x0

    :goto_2
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method greylist-max-o adjustInputType(ZZZZ)V
    .locals 2

    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    :cond_1
    if-eqz p3, :cond_3

    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    if-eqz p4, :cond_3

    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    :cond_3
    :goto_0
    return-void
.end method

.method blacklist beforeSetText()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertModeController;->beforeSetText()V

    return-void
.end method

.method public greylist-max-o beginBatchEdit()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-ne v2, v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-boolean v3, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v3, :cond_0

    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    iput v3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iput v3, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->beginBatchEdit()V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    :cond_1
    return-void
.end method

.method greylist-max-o canRedo()Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->countRedos([Landroid/content/UndoOwner;)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0
.end method

.method greylist-max-o canUndo()Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0
.end method

.method greylist-max-o checkField()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "TextView"

    const-string v1, "TextView does not support text selection. Selection cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o createInputContentTypeIfNeeded()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    :cond_0
    return-void
.end method

.method greylist-max-o createInputMethodStateIfNeeded()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    :cond_0
    return-void
.end method

.method public blacklist editorShowSoftInput()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocusInternal:Z

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

.method public greylist-max-o endBatchEdit()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    :cond_0
    return-void
.end method

.method greylist-max-o ensureEndedBatchEdit()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    :cond_0
    return-void
.end method

.method blacklist enterInsertMode(I)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Landroid/widget/Editor$InsertModeController;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/Editor$InsertModeController;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$InsertModeController;->enterInsertMode(I)Z

    move-result v0

    return v0
.end method

.method blacklist exitInsertMode()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertModeController;->exitInsertMode()V

    return-void
.end method

.method greylist-max-o extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->endBatchEdit()V

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isActive()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isCursorBeingModified()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->show()V

    :cond_4
    return-void
.end method

.method greylist-max-o forgetUndoRedo()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/UndoOwner;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v2, v0, v1

    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    return-void
.end method

.method public greylist-max-o getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    .locals 6

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge p2, v1, :cond_4

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_4

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    sub-int v1, v0, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/Editor;->mLineSlopRatio:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Landroid/widget/Editor;->mLineChangeSlopMin:I

    iget v4, p0, Landroid/widget/Editor;->mLineChangeSlopMax:I

    add-int v5, v1, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v3

    int-to-float v3, v3

    if-le v0, p2, :cond_2

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, p3, v4

    if-ltz v4, :cond_2

    return v0

    :cond_2
    if-ge v0, p2, :cond_3

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpg-float v4, p3, v4

    if-gtz v4, :cond_3

    return v0

    :cond_3
    return p2

    :cond_4
    :goto_0
    return v0
.end method

.method public greylist-max-o getCursorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getDefaultOnReceiveContentListener()Landroid/widget/TextViewOnReceiveContentListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

    return-object v0
.end method

.method public blacklist getFlagCursorDragFromAnywhereEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    return v0
.end method

.method public blacklist getFlagInsertionHandleGesturesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    return v0
.end method

.method public greylist-max-o getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 2

    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    return-object v0
.end method

.method greylist-max-o getLastUpPositionX()F
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->getLastUpX()F

    move-result v0

    return v0
.end method

.method greylist-max-o getLastUpPositionY()F
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->getLastUpY()F

    move-result v0

    return v0
.end method

.method public greylist-max-o getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .locals 2

    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    return-object v0
.end method

.method greylist-max-o getTextActionMode()Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method greylist-max-o getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public greylist-max-o getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method greylist-max-o hasInsertionController()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method greylist-max-o hasSelectionController()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method greylist-max-o hideCursorAndSpanControllers()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    return-void
.end method

.method greylist-max-o hideFloatingToolbar(I)V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    :cond_0
    return-void
.end method

.method greylist-max-o hideInsertionPointCursorController()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    :cond_0
    return-void
.end method

.method greylist-max-o invalidateActionModeAsync()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionModeAsync()V

    return-void
.end method

.method greylist-max-o invalidateHandlesAndActionMode()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->invalidateHandles()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->invalidateHandle()V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    :cond_2
    return-void
.end method

.method greylist invalidateTextDisplayList()V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method greylist-max-o invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 12

    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_5

    instance-of v0, p1, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/text/flags/Flags;->insertModeCrashWhenDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p3, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    move-object v4, p1

    check-cast v4, Landroid/text/DynamicLayout;

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v5

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v6

    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    aget v9, v5, v8

    if-lt v9, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v8, v7, :cond_5

    aget v9, v6, v8

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    iget-object v10, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v10, v10, v9

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    :cond_3
    aget v10, v5, v8

    if-lt v10, v3, :cond_4

    goto :goto_2

    :cond_4
    nop

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public blacklist isBlinking()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-static {v0}, Landroid/widget/Editor$Blink;->-$$Nest$fgetmCancelled(Landroid/widget/Editor$Blink;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method blacklist loadCursorDrawable()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method blacklist loadHandleDrawables(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$InsertionPointCursorController;->-$$Nest$mreloadHandleDrawable(Landroid/widget/Editor$InsertionPointCursorController;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$mreloadHandleDrawables(Landroid/widget/Editor$SelectionModifierCursorController;)V

    :cond_3
    return-void
.end method

.method greylist-max-o makeBlink()V
    .locals 4

    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$Blink-IA;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method blacklist maybeFireScheduledRestartInputForSetText()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->invalidateInput(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    :cond_1
    return-void
.end method

.method greylist-max-o onAttachedToWindow()V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_2
    iget-object v2, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_3
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    :cond_4
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v1, v2, v3}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    return-void
.end method

.method public greylist-max-o onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->-$$Nest$minvalidate(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    return-void
.end method

.method public greylist-max-o onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    if-nez v2, :cond_9

    iget v2, v0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_9

    iget v2, v0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v3, v0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    iget v4, v0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canSelectText()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    if-lt v2, v3, :cond_2

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    if-gt v2, v3, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    if-nez v3, :cond_3

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v3

    const/16 v6, 0xb

    const/4 v7, 0x5

    if-eqz v3, :cond_5

    new-array v3, v7, [Landroid/widget/Editor$SuggestionInfo;

    const/4 v8, 0x0

    :goto_1
    array-length v9, v3

    const/4 v10, 0x0

    if-ge v8, v9, :cond_4

    new-instance v9, Landroid/widget/Editor$SuggestionInfo;

    invoke-direct {v9, v10}, Landroid/widget/Editor$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionInfo-IA;)V

    aput-object v9, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    const v8, 0x1040c87

    invoke-interface {v1, v4, v4, v6, v8}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v8

    iget-object v9, v0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    invoke-virtual {v9, v3, v10}, Landroid/widget/Editor$SuggestionHelper;->getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_5

    aget-object v11, v3, v10

    iget-object v12, v11, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v8, v4, v4, v10, v12}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    new-instance v13, Landroid/widget/Editor$4;

    invoke-direct {v13, v0, v11}, Landroid/widget/Editor$4;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    const/16 v3, 0xa

    const/16 v8, 0xb

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x4

    iget-boolean v12, v0, Landroid/widget/Editor;->mUseNewContextMenu:Z

    const/4 v13, 0x2

    if-eqz v12, :cond_7

    const/16 v12, 0xd

    const/16 v14, 0xe

    const/16 v15, 0x10

    const/16 v16, 0xf

    const/16 v17, 0xc

    invoke-interface {v1, v5}, Landroid/view/ContextMenu;->setOptionalIconsVisible(Z)V

    invoke-interface {v1, v5}, Landroid/view/ContextMenu;->setGroupDividerEnabled(Z)V

    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor;->setAssistContextMenuItems(Landroid/view/Menu;)V

    iget-object v7, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->keyboard:I

    if-ne v7, v13, :cond_6

    move v13, v5

    goto :goto_3

    :cond_6
    move v13, v4

    :goto_3
    invoke-interface {v1, v13}, Landroid/view/ContextMenu;->setQwertyMode(Z)V

    move/from16 v7, v16

    move/from16 v13, v17

    goto :goto_4

    :cond_7
    const/16 v15, 0x9

    const/4 v14, 0x7

    const/16 v16, 0x8

    const/4 v12, 0x6

    const/16 v17, 0x5

    move/from16 v7, v16

    move/from16 v13, v17

    :goto_4
    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v6, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v6, 0xa

    move/from16 v18, v2

    const v2, 0x1040f5e

    move/from16 v19, v3

    const v3, 0x1020032

    invoke-interface {v1, v5, v3, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x7a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v6, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->canUndo()Z

    move-result v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v2, 0x1020033

    const v6, 0x1040c72

    const/16 v3, 0xb

    invoke-interface {v1, v5, v2, v3, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x1001

    const/16 v6, 0x7a

    invoke-interface {v2, v6, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v6, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->canRedo()Z

    move-result v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v2, 0x1020020

    const v6, 0x1040003

    const/4 v5, 0x2

    invoke-interface {v1, v5, v2, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v6, 0x78

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v6, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->canCut()Z

    move-result v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v2, 0x1020021

    const v6, 0x1040001

    const/4 v3, 0x3

    invoke-interface {v1, v5, v2, v3, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v5, 0x63

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->canCopy()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v2, 0x1020022

    const v5, 0x104000b

    const/4 v6, 0x4

    const/4 v3, 0x2

    invoke-interface {v1, v3, v2, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x76

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const v2, 0x1020031

    const v5, 0x1040019

    const/4 v6, 0x2

    invoke-interface {v1, v6, v2, v12, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v5, 0x1001

    invoke-interface {v2, v3, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canPasteAsPlainText()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const v2, 0x102001f

    const v3, 0x104000d

    const/4 v5, 0x2

    invoke-interface {v1, v5, v2, v14, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x61

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const v2, 0x1020035

    const v3, 0x1040e54

    const/4 v5, 0x3

    invoke-interface {v1, v5, v2, v15, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canShare()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const v2, 0x1020043

    const v3, 0x104001a

    const/4 v5, 0x3

    invoke-interface {v1, v5, v2, v7, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canRequestAutofill()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v2, v0, Landroid/widget/Editor;->SEP_VERSION:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide v5, 0x402e333333333333L    # 15.1

    cmpl-double v2, v2, v5

    if-ltz v2, :cond_8

    iget-object v2, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v2

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/samsung/android/rune/ViewRune;->WIDGET_SSS_TRANSLATE_SUPPORTED:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->canStartActivityForResult()Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x10205f0

    const v3, 0x1040ebc

    const/4 v5, 0x2

    invoke-interface {v1, v5, v2, v13, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/widget/Editor;->mPreserveSelection:Z

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p0 .. p1}, Landroid/widget/Editor;->adjustIconSpacing(Landroid/view/ContextMenu;)V

    return-void

    :cond_9
    :goto_5
    return-void

    nop

    :array_0
    .array-data 4
        0x112000a
        0x1120009
        0x1010311
        0x1010312
        0x1010313
        0x101037e
        0x1010479
    .end array-data
.end method

.method greylist-max-o onDetachedFromWindow()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Landroid/widget/Editor;->discardTextDisplayLists()V

    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    iget-object v0, p0, Landroid/widget/Editor;->mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

    invoke-virtual {v0}, Landroid/widget/TextViewOnReceiveContentListener;->clearInputConnectionInfo()V

    invoke-direct {p0}, Landroid/widget/Editor;->unregisterOnBackInvokedCallback()V

    return-void
.end method

.method blacklist onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "I)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p7

    iget-object v0, v9, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    iget-object v0, v9, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    iget-object v14, v9, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v14, :cond_1

    iget v0, v14, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v0, :cond_1

    iget-boolean v0, v14, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, v14, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v9, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hasActiveInputConnection(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->reportExtractedText()Z

    :cond_1
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->highContrastTextSmallTextRect()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHighContrastTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v15, v0

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move v8, v15

    invoke-direct/range {v0 .. v8}, Landroid/widget/Editor;->drawLayout(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;IZ)V

    :cond_3
    iget-object v0, v9, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v0, :cond_4

    iget-object v0, v9, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, v10, v11}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    :cond_4
    if-eqz p5, :cond_6

    if-ne v12, v13, :cond_6

    iget-object v0, v9, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, v9, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasGesturePreviewHighlight()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    if-nez v12, :cond_5

    iget-object v1, v9, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isHighContrastTextEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v9, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getHCTStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v0, v1

    iget-object v1, v9, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_5

    mul-int/lit8 v0, v0, -0x1

    :cond_5
    invoke-direct {v9, v10, v0, v11}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;II)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v1, p5

    :goto_1
    iget-object v0, v9, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    if-eqz v0, :cond_7

    iget-object v0, v9, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    invoke-virtual {v0, v10}, Landroid/widget/SelectionActionModeHelper;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, v9, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->isDrawingHighlight()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    move-object/from16 v16, v1

    goto :goto_2

    :cond_7
    move-object/from16 v16, v1

    :goto_2
    iget-object v0, v9, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-eqz v0, :cond_8

    iget-object v0, v9, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0, v10}, Landroid/widget/Editor$InsertModeController;->onDraw(Landroid/graphics/Canvas;)V

    :cond_8
    if-nez v15, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, v16

    move-object/from16 v6, p6

    move/from16 v7, p7

    move v8, v15

    invoke-direct/range {v0 .. v8}, Landroid/widget/Editor;->drawLayout(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;IZ)V

    :cond_9
    return-void
.end method

.method greylist-max-o onDrop(Landroid/view/DragEvent;)V
    .locals 9

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    instance-of v3, v1, Landroid/widget/Editor$DragLocalState;

    if-eqz v3, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/widget/Editor$DragLocalState;

    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iget v4, v2, Landroid/widget/Editor$DragLocalState;->start:I

    if-lt v0, v4, :cond_2

    iget v4, v2, Landroid/widget/Editor$DragLocalState;->end:I

    if-ge v0, v4, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/DragAndDropPermissions;->takeTransient()Z

    :cond_3
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v5, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v5}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    :try_start_0
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    new-instance v7, Landroid/view/ContentInfo$Builder;

    const/4 v8, 0x3

    invoke-direct {v7, v6, v8}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    invoke-virtual {v7, v4}, Landroid/view/ContentInfo$Builder;->setDragAndDropPermissions(Landroid/view/DragAndDropPermissions;)Landroid/view/ContentInfo$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    if-eqz v3, :cond_4

    invoke-direct {p0, v2, v0, v5}, Landroid/widget/Editor;->deleteSourceAfterLocalDrop(Landroid/widget/Editor$DragLocalState;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->endBatchEdit()V

    iget-object v5, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v5}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    nop

    return-void

    :catchall_0
    move-exception v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->endBatchEdit()V

    iget-object v6, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v6}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    throw v5
.end method

.method greylist-max-o onFocusChanged(ZI)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    if-eqz p1, :cond_a

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iget-boolean v2, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_2

    if-ltz v0, :cond_2

    if-gez v1, :cond_8

    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v5

    if-ltz v5, :cond_3

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_3
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    invoke-interface {v6, v7, v8, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    :cond_4
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v7

    if-nez v7, :cond_5

    iget-boolean v7, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz v7, :cond_6

    :cond_5
    if-ltz v0, :cond_6

    if-ltz v1, :cond_6

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_6
    iget-boolean v7, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->selectAllText()Z

    :cond_7
    iput-boolean v3, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    :cond_8
    iput-boolean v4, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    iput-boolean v4, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    iget-object v3, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    :cond_9
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    :cond_b
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    :goto_2
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    :goto_3
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    :cond_e
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertModeController;->exitInsertMode()V

    :cond_f
    invoke-direct {p0}, Landroid/widget/Editor;->ensureNoSelectionIfNonSelectable()V

    :goto_4
    return-void
.end method

.method blacklist onInitializeSmartActionsAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$AccessibilitySmartActions;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method greylist-max-o onLocaleChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    return-void
.end method

.method greylist-max-o onScreenStateChanged(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mhadWindowFocus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mhadWindowFocus:Z

    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasWindowFocus()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Editor;->mhadWindowFocus:Z

    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method greylist-max-o onScrollChanged()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    :cond_1
    return-void
.end method

.method final blacklist onTextOperationUserChanged()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->resetSession()V

    :cond_0
    return-void
.end method

.method public greylist-max-o onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/Editor;->shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastButtonState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_0

    iput-boolean v1, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v3, p1, v2}, Landroid/widget/EditorTouchState;->update(Landroid/view/MotionEvent;Landroid/view/ViewConfiguration;)V

    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/Editor$InsertionPointCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_3
    iget-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_6

    :cond_5
    iput-boolean v4, p0, Landroid/widget/Editor;->mIsSelectedByLongClick:Z

    iput-boolean v4, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    invoke-direct {p0}, Landroid/widget/Editor;->dismissMagnifierForDrag()V

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_8

    iput-boolean v4, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    iput-boolean v4, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Landroid/widget/Editor;->mWasBlinking:Z

    invoke-direct {p0}, Landroid/widget/Editor;->softInputShown()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/Editor;->mWasSIPShowing:Z

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/Editor;->setUseCtxMenuInDesktopMode(Z)V

    :cond_9
    return-void
.end method

.method greylist-max-o onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 13

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper;->resetSelection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    const/4 v3, 0x1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v0, :cond_11

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ltz v6, :cond_11

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v6

    iget-boolean v7, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    xor-int/2addr v7, v2

    if-eqz v7, :cond_5

    move-object v8, v5

    check-cast v8, Landroid/text/Spannable;

    invoke-static {v8, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v8, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v8}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    :cond_5
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v8

    if-nez v8, :cond_11

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_6
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    const-class v10, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/SuggestionSpan;

    const/4 v9, 0x0

    :goto_1
    array-length v10, v8

    if-ge v9, v10, :cond_8

    aget-object v10, v8, v9

    invoke-virtual {v10}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v10

    and-int/lit16 v10, v10, 0x3000

    if-eqz v10, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    if-nez v1, :cond_9

    new-instance v9, Landroid/widget/Editor$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0}, Landroid/widget/Editor$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Editor;)V

    iput-object v9, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    :cond_9
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v10, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v8

    if-eqz v8, :cond_10

    if-eqz v7, :cond_f

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-boolean v8, p0, Landroid/widget/Editor;->mShowSoftInputOnFocusInternal:Z

    if-nez v8, :cond_b

    invoke-direct {p0}, Landroid/widget/Editor;->softInputShown()Z

    move-result v8

    iput-boolean v8, p0, Landroid/widget/Editor;->mShowSoftInputOnFocusInternal:Z

    :cond_b
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_d

    iget-boolean v1, p0, Landroid/widget/Editor;->mWasBlinking:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    iget-boolean v2, p0, Landroid/widget/Editor;->mWasSIPShowing:Z

    if-ne v1, v2, :cond_11

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    invoke-virtual {p0}, Landroid/widget/Editor;->startInsertionActionMode()V

    :cond_c
    goto :goto_5

    :cond_d
    if-eqz v3, :cond_e

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    if-ne v4, v8, :cond_e

    iget-boolean v8, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    if-nez v8, :cond_e

    invoke-virtual {p0}, Landroid/widget/Editor;->startInsertionActionMode()V

    iput-boolean v2, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    goto :goto_3

    :cond_e
    iput-boolean v1, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    :goto_3
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_5

    :cond_f
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    goto :goto_5

    :cond_10
    :goto_4
    nop

    :cond_11
    :goto_5
    return-void
.end method

.method greylist-max-o onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    invoke-direct {p0}, Landroid/widget/Editor;->ensureNoSelectionIfNonSelectable()V

    :cond_3
    :goto_0
    return-void
.end method

.method public greylist-max-o performLongClick(Z)Z
    .locals 6

    iget-boolean v0, p0, Landroid/widget/Editor;->mIsBeingLongClickedByAccessibility:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->toggleInsertionActionMode()V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    const/16 v2, 0x275

    if-nez p1, :cond_3

    iget-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->getLastDownX()F

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v4}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->isOnHandle()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v4}, Landroid/widget/EditorTouchState;->getLastDownX()F

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v5}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getKeycodeDpadCenterStatus()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iput-boolean v1, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    invoke-virtual {p0}, Landroid/widget/Editor;->startInsertionActionMode()V

    :cond_2
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    const/4 p1, 0x1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_3
    if-nez p1, :cond_6

    iget-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_6

    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v2, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v1, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    :cond_5
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :goto_0
    const/4 p1, 0x1

    :cond_6
    if-nez p1, :cond_9

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result p1

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    goto :goto_1

    :cond_7
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getKeycodeDpadCenterStatus()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    :cond_8
    :goto_1
    if-eqz p1, :cond_9

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_9
    return p1
.end method

.method blacklist performSmartActionsAccessibilityAction(I)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$AccessibilitySmartActions;->performAccessibilityAction(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o prepareCursorControllers()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_1

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-le v5, v6, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    move v0, v5

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    if-eqz v2, :cond_5

    iget-boolean v5, p0, Landroid/widget/Editor;->mDrawCursorOnMagnifier:Z

    if-nez v5, :cond_4

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v4

    :goto_3
    iput-boolean v5, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v2, :cond_6

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_4
    iput-boolean v3, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    iget-boolean v3, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    const/4 v5, 0x0

    if-nez v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    iget-object v3, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    iput-object v5, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    :cond_7
    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v3, :cond_8

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    iget-object v3, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    iput-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    :cond_8
    iput-boolean v4, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    return-void
.end method

.method greylist-max-o redo()V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v1, v2

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/UndoManager;->redo([Landroid/content/UndoOwner;I)I

    return-void
.end method

.method greylist-max-o refreshTextActionMode()V
    .locals 5

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isCursorBeingModified()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isCursorBeingModified()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    return-void

    :cond_3
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_4

    iget-boolean v4, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    if-eqz v4, :cond_a

    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_2

    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_2

    :cond_9
    :goto_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_a
    :goto_2
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    return-void
.end method

.method greylist-max-o replace()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method greylist-max-o reportExtractedText()Z
    .locals 11

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v2, :cond_1

    iget-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-nez v3, :cond_1

    return v1

    :cond_1
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    iget-object v3, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v10

    if-nez v10, :cond_3

    return v1

    :cond_3
    iget v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v4, :cond_4

    if-nez v2, :cond_4

    const/4 v4, -0x2

    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_4
    iget v6, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v7, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iget v8, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v9, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v5, v3, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v10, v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    const/4 v4, -0x1

    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    const/4 v1, 0x1

    return v1

    :cond_5
    return v1
.end method

.method greylist-max-o restoreInstanceState(Landroid/os/ParcelableParcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v1, v0}, Landroid/widget/Editor$UndoInputFilter;->restoreInstanceState(Landroid/os/Parcel;)V

    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string v2, "Editor"

    invoke-virtual {v1, v2, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    return-void
.end method

.method greylist-max-o saveInstanceState()Landroid/os/ParcelableParcel;
    .locals 3

    new-instance v0, Landroid/os/ParcelableParcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelableParcel;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->saveInstanceState(Landroid/os/Parcel;)V

    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v2, v1}, Landroid/widget/Editor$UndoInputFilter;->saveInstanceState(Landroid/os/Parcel;)V

    return-object v0
.end method

.method blacklist scheduleRestartInputForSetText()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    return-void
.end method

.method greylist-max-o selectCurrentWord()Z
    .locals 12

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getKeycodeDpadCenterStatus()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    move v4, v5

    move v0, v5

    :cond_2
    if-ltz v0, :cond_a

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v0, v5, :cond_3

    goto/16 :goto_3

    :cond_3
    if-ltz v4, :cond_9

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v4, v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spanned;

    const-class v6, Landroid/text/style/URLSpan;

    invoke-interface {v5, v0, v4, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/URLSpan;

    array-length v6, v5

    const/4 v7, 0x1

    if-lt v6, v7, :cond_5

    aget-object v6, v5, v1

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v8, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spanned;

    invoke-interface {v9, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v6

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8, v0, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v6, v0}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v8

    invoke-virtual {v6, v4}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v8, v10, :cond_7

    if-eq v9, v10, :cond_7

    if-ne v8, v9, :cond_6

    goto :goto_0

    :cond_6
    move v6, v9

    goto :goto_1

    :cond_7
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/Editor;->getCharClusterRange(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v8

    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v9

    move v6, v9

    :goto_1
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, v8, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    if-le v6, v8, :cond_8

    move v1, v7

    :cond_8
    return v1

    :cond_9
    :goto_2
    return v1

    :cond_a
    :goto_3
    return v1
.end method

.method greylist-max-o sendOnTextChanged(III)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Landroid/widget/SelectionActionModeHelper;->onTextChanged(II)V

    add-int v0, p1, p3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    return-void
.end method

.method greylist-max-o setContextMenuAnchor(FF)V
    .locals 0

    iput p1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    iput p2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    return-void
.end method

.method public blacklist setCursorDragMinAngleFromVertical(I)V
    .locals 1

    invoke-static {p1}, Landroid/widget/EditorTouchState;->getXYRatio(I)F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mCursorDragDirectionMinXYRatio:F

    return-void
.end method

.method public greylist-max-o setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    :cond_0
    iput-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist setFlagCursorDragFromAnywhereEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    return-void
.end method

.method public blacklist setFlagInsertionHandleGesturesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    return-void
.end method

.method greylist-max-o setFrame()V
    .locals 9

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    iget-object v3, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v6

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v7

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public blacklist setLineChangeSlopMinMaxForTesting(II)V
    .locals 0

    iput p1, p0, Landroid/widget/Editor;->mLineChangeSlopMin:I

    iput p2, p0, Landroid/widget/Editor;->mLineChangeSlopMax:I

    return-void
.end method

.method greylist-max-o setRestartActionModeOnNextRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    return-void
.end method

.method blacklist setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTransformationMethodInternal(Landroid/text/method/TransformationMethod;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$InsertModeController;->updateTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method public blacklist setUseCtxMenuInDesktopMode(Z)V
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Landroid/widget/Editor;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/Editor;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-nez p1, :cond_4

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    iput-boolean v1, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    goto :goto_2

    :cond_5
    iput-boolean p1, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    :goto_2
    return-void
.end method

.method greylist-max-o shouldOfferToShowSuggestions()Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v2, v1, Landroid/text/Spannable;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/text/Spannable;

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/SuggestionSpan;

    array-length v7, v6

    if-nez v7, :cond_1

    return v3

    :cond_1
    const/4 v7, 0x1

    if-ne v4, v5, :cond_5

    const/4 v8, 0x0

    :goto_0
    array-length v9, v6

    if-ge v8, v9, :cond_4

    aget-object v9, v6, v8

    invoke-virtual {v9}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, 0x3000

    if-eqz v9, :cond_2

    return v3

    :cond_2
    aget-object v9, v6, v8

    invoke-virtual {v9}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_3

    return v7

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    iget-object v8, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x0

    iget-object v10, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    array-length v14, v6

    if-ge v13, v14, :cond_b

    aget-object v14, v6, v13

    invoke-virtual {v14}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v14

    and-int/lit16 v14, v14, 0x3000

    if-eqz v14, :cond_6

    return v3

    :cond_6
    aget-object v14, v6, v13

    invoke-interface {v2, v14}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    aget-object v15, v6, v13

    invoke-interface {v2, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-lt v4, v14, :cond_a

    if-le v4, v15, :cond_7

    goto :goto_4

    :cond_7
    if-nez v12, :cond_9

    aget-object v16, v6, v13

    invoke-virtual/range {v16 .. v16}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_8

    goto :goto_2

    :cond_8
    move v7, v3

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v7, 0x1

    :goto_3
    nop

    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    nop

    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v12, v7

    :cond_a
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_b
    if-nez v12, :cond_c

    return v3

    :cond_c
    if-lt v10, v11, :cond_d

    return v3

    :cond_d
    if-lt v8, v10, :cond_f

    if-le v9, v11, :cond_e

    goto :goto_5

    :cond_e
    const/4 v3, 0x1

    return v3

    :cond_f
    :goto_5
    return v3
.end method

.method greylist-max-o shouldRenderCursor()Z
    .locals 9

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    rem-long v5, v3, v5

    const-wide/16 v7, 0x1f4

    cmp-long v0, v5, v7

    if-gez v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method greylist-max-o startActionModeInternal(I)Z
    .locals 6

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    return v1

    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    return v1

    :cond_4
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-boolean v2, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    invoke-direct {p0}, Landroid/widget/Editor;->isUniversalSwitchEnable()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Landroid/widget/Editor$TextActionModeCallback;

    invoke-direct {v2, p0, p1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;I)V

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v3}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-direct {p0}, Landroid/widget/Editor;->registerOnBackInvokedCallback()V

    goto :goto_0

    :cond_7
    const-string v2, "Editor"

    const-string v4, "Action mode didn\'t start because Universal Switch / Desktop mode was enabled"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    move v2, v1

    goto :goto_2

    :cond_9
    :goto_1
    move v2, v3

    :goto_2
    if-ne p1, v0, :cond_a

    if-nez v2, :cond_a

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    instance-of v0, v0, Lcom/android/internal/view/FloatingActionMode;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    new-instance v4, Landroid/widget/Editor$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/widget/Editor$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Editor;)V

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/view/FloatingActionMode;->setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)V

    :cond_a
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    move v3, v1

    :goto_3
    move v0, v3

    if-eqz v0, :cond_c

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v3

    if-nez v3, :cond_c

    iget-boolean v3, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v3, :cond_c

    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    :cond_c
    return v0
.end method

.method greylist-max-o startInsertionActionMode()V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    iget-boolean v0, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->isUniversalSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "Editor"

    const-string v1, "Action mode didn\'t start because Universal Switch / Desktop mode was enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;I)V

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-direct {p0}, Landroid/widget/Editor;->registerOnBackInvokedCallback()V

    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    :cond_5
    return-void
.end method

.method greylist-max-o startLinkActionModeAsync(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/SelectionActionModeHelper;->startLinkActionModeAsync(II)V

    return-void
.end method

.method greylist-max-o startSelectionActionModeAsync(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SelectionActionModeHelper;->startSelectionActionModeAsync(Z)V

    return-void
.end method

.method protected greylist-max-o stopTextActionMode()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->unregisterOnBackInvokedCallback()V

    return-void
.end method

.method protected blacklist stopTextActionModeFromIME()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    :cond_1
    return-void
.end method

.method greylist-max-o stopTextActionModeWithPreservingSelection()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    :cond_0
    iput-boolean v1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return-void
.end method

.method greylist-max-o undo()V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v1, v2

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/UndoManager;->undo([Landroid/content/UndoOwner;I)I

    return-void
.end method

.method greylist-max-o updateCursorPosition()V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/Editor;->loadCursorDrawable()V

    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v6

    invoke-virtual {v0, v2, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v7

    invoke-direct {p0, v4, v5, v7}, Landroid/widget/Editor;->updateCursorPosition(IIF)V

    return-void
.end method
