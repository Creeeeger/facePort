.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$AccessibilitySmartActions;,
        Landroid/widget/Editor$ProcessTextIntentActionsHandler;,
        Landroid/widget/Editor$EditOperation;,
        Landroid/widget/Editor$UndoInputFilter;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$SelectionHandleView;,
        Landroid/widget/Editor$HandleType;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$MagnifierMotionAnimator;,
        Landroid/widget/Editor$CursorAnchorInfoNotifier;,
        Landroid/widget/Editor$TextActionModeCallback;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$SuggestionHelper;,
        Landroid/widget/Editor$SuggestionSpanInfo;,
        Landroid/widget/Editor$SuggestionInfo;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$TextRenderNode;,
        Landroid/widget/Editor$TextActionMode;,
        Landroid/widget/Editor$MagnifierHandleTrigger;
    }
.end annotation


# static fields
.field static final greylist-max-o BLINK:I = 0x1f4

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

.field private static final greylist-max-o MENU_ITEM_ORDER_ASSIST:I = 0x0

.field private static final greylist-max-o MENU_ITEM_ORDER_AUTOFILL:I = 0xa

.field private static final blacklist MENU_ITEM_ORDER_CLIPBOARD:I = 0xb

.field private static final greylist-max-o MENU_ITEM_ORDER_COPY:I = 0x3

.field private static final greylist-max-o MENU_ITEM_ORDER_CUT:I = 0x2

.field private static final blacklist MENU_ITEM_ORDER_DICTIONARY:I = 0xd

.field private static final greylist-max-o MENU_ITEM_ORDER_PASTE:I = 0x4

.field private static final greylist-max-o MENU_ITEM_ORDER_PASTE_AS_PLAIN_TEXT:I = 0x5

.field private static final greylist-max-o MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64

.field private static final greylist-max-o MENU_ITEM_ORDER_REDO:I = 0x7

.field private static final greylist-max-o MENU_ITEM_ORDER_REPLACE:I = 0x9

.field private static final greylist-max-o MENU_ITEM_ORDER_SECONDARY_ASSIST_ACTIONS_START:I = 0x32

.field private static final greylist-max-o MENU_ITEM_ORDER_SELECT_ALL:I = 0x8

.field private static final greylist-max-o MENU_ITEM_ORDER_SHARE:I = 0xc

.field private static final greylist-max-o MENU_ITEM_ORDER_UNDO:I = 0x6

.field private static final blacklist MIN_LINE_HEIGHT_FOR_MAGNIFIER:I = 0x14

.field private static final blacklist RECENT_CUT_COPY_DURATION_MS:I = 0x3a98

.field private static final blacklist SHADOW_VIEW_MAX_WIDTH:F = 0.75f

.field private static final blacklist SHADOW_VIEW_MAX_WIDTH_TABLET:F = 0.55f

.field private static final blacklist SHADOW_VIEW_WIDTH_RESTRICT_DP:I = 0x1e0

.field private static final blacklist SWITCH_CONTROL_ENABLED:Ljava/lang/String; = "universal_switch_enabled"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Editor"

.field private static final blacklist TAG_LAG:Ljava/lang/String; = "PF_LAG"

.field private static final blacklist TW_MENU_ITEM_ORDER_CLIPBOARD:I = 0xa

.field private static final blacklist TW_MENU_ITEM_ORDER_CLOSE:I = 0x0

.field private static final blacklist TW_MENU_ITEM_ORDER_COPY:I = 0x2

.field private static final blacklist TW_MENU_ITEM_ORDER_CUT:I = 0x1

.field private static final blacklist TW_MENU_ITEM_ORDER_DICTIONARY:I = 0xc

.field private static final blacklist TW_MENU_ITEM_ORDER_HBD_TRANSLATE:I = 0x8

.field private static final blacklist TW_MENU_ITEM_ORDER_PASTE:I = 0x3

.field private static final blacklist TW_MENU_ITEM_ORDER_PASTE_AS_PLAIN_TEXT:I = 0x4

.field private static final blacklist TW_MENU_ITEM_ORDER_REDO:I = 0x6

.field private static final blacklist TW_MENU_ITEM_ORDER_SCAN_TEXT:I = 0x9

.field private static final blacklist TW_MENU_ITEM_ORDER_SELECT_ALL:I = 0x7

.field private static final blacklist TW_MENU_ITEM_ORDER_SHARE:I = 0xb

.field private static final blacklist TW_MENU_ITEM_ORDER_TRANSLATE:I = 0xd

.field private static final blacklist TW_MENU_ITEM_ORDER_UNDO:I = 0x5

.field private static final blacklist TW_MENU_ITEM_ORDER_WEBSEARCH:I = 0xe

.field private static final greylist-max-o UNDO_OWNER_TAG:Ljava/lang/String; = "Editor"

.field private static final greylist-max-o UNSET_LINE:I = -0x1

.field private static final greylist-max-o UNSET_X_VALUE:I = -0x1

.field private static final blacklist mDisableDoubleTapTextSelection:Z


# instance fields
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

.field blacklist mCursorMoving:Z

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

.field private greylist-max-o mInsertionActionModeRunnable:Ljava/lang/Runnable;

.field private greylist mInsertionControllerEnabled:Z

.field greylist-max-o mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field greylist-max-o mIsBeingLongClicked:Z

.field blacklist mIsBeingLongClickedByAccessibility:Z

.field greylist-max-o mIsInsertionActionModeStartPending:Z

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

.field private blacklist mWasBlinking:Z

.field private blacklist mWasSIPShowing:Z

.field private greylist-max-o mWordIterator:Landroid/text/method/WordIterator;

.field private greylist-max-o mWordIteratorWithText:Landroid/text/method/WordIterator;

.field private blacklist mhadWindowFocus:Z


# direct methods
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

    .line 546
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_DisableDoubleTapTextSelection"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/Editor;->mDisableDoubleTapTextSelection:Z

    .line 545
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Landroid/widget/TextViewOnReceiveContentListener;

    invoke-direct {v0}, Landroid/widget/TextViewOnReceiveContentListener;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

    .line 270
    new-instance v0, Landroid/content/UndoManager;

    invoke-direct {v0}, Landroid/content/UndoManager;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 271
    const-string v1, "Editor"

    invoke-virtual {v0, v1, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 272
    new-instance v0, Landroid/widget/Editor$UndoInputFilter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    .line 275
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Landroid/widget/Editor;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 289
    new-instance v1, Landroid/widget/Editor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/widget/Editor$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 294
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    .line 300
    new-instance v2, Landroid/widget/Editor$1;

    invoke-direct {v2, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object v2, p0, Landroid/widget/Editor;->mUpdateMagnifierRunnable:Ljava/lang/Runnable;

    .line 310
    new-instance v2, Landroid/widget/Editor$2;

    invoke-direct {v2, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    iput-object v2, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 337
    iput-boolean v1, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    .line 370
    iput v1, p0, Landroid/widget/Editor;->mInputType:I

    .line 387
    iput-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 404
    iput-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 422
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    .line 440
    iput-object v2, p0, Landroid/widget/Editor;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 441
    iput-boolean v0, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    .line 444
    iput-boolean v1, p0, Landroid/widget/Editor;->mhadWindowFocus:Z

    .line 455
    new-instance v3, Landroid/widget/EditorTouchState;

    invoke-direct {v3}, Landroid/widget/EditorTouchState;-><init>()V

    iput-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    .line 479
    new-instance v3, Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-direct {v3, p0, v2}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$CursorAnchorInfoNotifier-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    .line 482
    new-instance v3, Landroid/widget/Editor$3;

    invoke-direct {v3, p0}, Landroid/widget/Editor$3;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 491
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 493
    new-instance v3, Landroid/widget/Editor$SuggestionHelper;

    invoke-direct {v3, p0, v2}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionHelper-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    .line 513
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/Editor;->mInitialZoom:F

    .line 526
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    .line 551
    iput-boolean v1, p0, Landroid/widget/Editor;->mWasBlinking:Z

    .line 552
    iput-boolean v1, p0, Landroid/widget/Editor;->mWasSIPShowing:Z

    .line 553
    iput-boolean v1, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    .line 554
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowSoftInputOnFocusInternal:Z

    .line 3688
    new-instance v3, Landroid/widget/Editor$5;

    invoke-direct {v3, p0}, Landroid/widget/Editor$5;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 573
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 575
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 576
    new-instance v3, Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-direct {v3, p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$ProcessTextIntentActionsHandler-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 577
    new-instance v3, Landroid/widget/Editor$AccessibilitySmartActions;

    invoke-direct {v3, p1, v2}, Landroid/widget/Editor$AccessibilitySmartActions;-><init>(Landroid/widget/TextView;Landroid/widget/Editor$AccessibilitySmartActions-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    .line 578
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111013a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/Editor;->mHapticTextHandleEnabled:Z

    .line 581
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

    .line 584
    const/16 v2, 0x2d

    const-string/jumbo v3, "widget__min_angle_from_vertical_to_start_cursor_drag"

    invoke-static {v3, v2}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v2

    .line 587
    .local v2, "cursorDragMinAngleFromVertical":I
    invoke-static {v2}, Landroid/widget/EditorTouchState;->getXYRatio(I)F

    move-result v3

    iput v3, p0, Landroid/widget/Editor;->mCursorDragDirectionMinXYRatio:F

    .line 589
    const-string/jumbo v3, "widget__enable_insertion_handle_gestures"

    invoke-static {v3, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    .line 592
    const-string/jumbo v3, "widget__enable_new_magnifier"

    invoke-static {v3, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v0

    :cond_2
    iput-boolean v1, p0, Landroid/widget/Editor;->mNewMagnifierEnabled:Z

    .line 595
    const/high16 v1, 0x3f000000    # 0.5f

    const-string/jumbo v3, "widget__line_slop_ratio"

    invoke-static {v3, v1}, Landroid/app/AppGlobals;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLineSlopRatio:F

    .line 609
    const/high16 v1, 0x42340000    # 45.0f

    .line 611
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 609
    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/Editor;->mLineChangeSlopMax:I

    .line 612
    const/high16 v1, 0x41000000    # 8.0f

    .line 614
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 612
    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Editor;->mLineChangeSlopMin:I

    .line 617
    invoke-virtual {p1}, Landroid/widget/TextView;->isThemeDeviceDefault()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    .line 619
    return-void
.end method

.method private blacklist canPrintLagLog()Z
    .locals 2

    .line 10031
    const-string/jumbo v0, "persist.keyboard.enable_write_lagLog"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10032
    .local v0, "enable":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private greylist-max-o chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 7
    .param p1, "pop"    # Landroid/widget/PopupWindow;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "tv"    # Landroid/widget/TextView;

    .line 1241
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1242
    .local v0, "wid":I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1244
    .local v1, "ht":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10504f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1246
    .local v2, "defaultWidthInPixels":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p2, v5, v3, v4, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 1248
    invoke-virtual {p3}, Landroid/widget/TextView;->isFallbackLineSpacingForStaticLayout()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 1249
    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    .line 1251
    .local v3, "l":Landroid/text/StaticLayout;
    const/4 v4, 0x0

    .line 1252
    .local v4, "max":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1253
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1252
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1260
    .end local v5    # "i":I
    :cond_0
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1261
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1262
    return-void
.end method

.method private greylist-max-o clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "horizontal"    # F

    .line 3155
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v1, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 3156
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 3158
    :cond_0
    const/4 v0, 0x0

    .line 3159
    .local v0, "drawableWidth":I
    if-eqz p1, :cond_1

    .line 3160
    iget-object v1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3161
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    .line 3163
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3166
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 3167
    .local v1, "scrollX":I
    int-to-float v2, v1

    sub-float v2, p2, v2

    .line 3168
    .local v2, "horizontalDiff":F
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3169
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 3172
    .local v3, "viewClippedWidth":I
    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_2

    .line 3174
    add-int v4, v3, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v0, v5

    sub-int/2addr v4, v5

    .local v4, "left":I
    goto :goto_2

    .line 3175
    .end local v4    # "left":I
    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v5

    if-lez v4, :cond_4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3176
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

    .line 3182
    :cond_3
    float-to-int v4, p2

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .restart local v4    # "left":I
    goto :goto_2

    .line 3180
    .end local v4    # "left":I
    :cond_4
    :goto_1
    iget-object v4, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v4

    .line 3184
    .restart local v4    # "left":I
    :goto_2
    return v4
.end method

.method private blacklist createBuilderWithInlineMagnifierDefaults()Landroid/widget/Magnifier$Builder;
    .locals 14

    .line 660
    new-instance v0, Landroid/widget/Magnifier$Builder;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/Magnifier$Builder;-><init>(Landroid/view/View;)V

    .line 662
    .local v0, "params":Landroid/widget/Magnifier$Builder;
    const-string/jumbo v1, "widget__magnifier_zoom_factor"

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v1, v2}, Landroid/app/AppGlobals;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v1

    .line 665
    .local v1, "zoom":F
    const-string/jumbo v2, "widget__magnifier_aspect_ratio"

    const/high16 v3, 0x40b00000    # 5.5f

    invoke-static {v2, v3}, Landroid/app/AppGlobals;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v2

    .line 669
    .local v2, "aspectRatio":F
    const v3, 0x3f99999a    # 1.2f

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_0

    const v3, 0x3fe66666    # 1.8f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 670
    :cond_0
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 672
    :cond_1
    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_2

    const/high16 v3, 0x41000000    # 8.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    .line 673
    :cond_2
    const/high16 v2, 0x40b00000    # 5.5f

    .line 676
    :cond_3
    iput v1, p0, Landroid/widget/Editor;->mInitialZoom:F

    .line 677
    const/high16 v3, 0x41a00000    # 20.0f

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 679
    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 677
    const/4 v5, 0x1

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Editor;->mMinLineHeightForMagnifier:I

    .line 680
    const/high16 v3, 0x42000000    # 32.0f

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 682
    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 680
    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Editor;->mMaxLineHeightForMagnifier:I

    .line 684
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 685
    .local v3, "layout":Landroid/text/Layout;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 686
    .local v4, "line":I
    nop

    .line 687
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v6

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    sub-int/2addr v6, v7

    .line 688
    .local v6, "sourceHeight":I
    int-to-float v7, v6

    mul-float/2addr v7, v1

    float-to-int v7, v7

    .line 689
    .local v7, "height":I
    iget v8, p0, Landroid/widget/Editor;->mMinLineHeightForMagnifier:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    float-to-int v8, v8

    .line 691
    .local v8, "width":I
    invoke-virtual {v0}, Landroid/widget/Magnifier$Builder;->setFishEyeStyle()Landroid/widget/Magnifier$Builder;

    move-result-object v9

    .line 692
    invoke-virtual {v9, v8, v7}, Landroid/widget/Magnifier$Builder;->setSize(II)Landroid/widget/Magnifier$Builder;

    move-result-object v9

    .line 693
    invoke-virtual {v9, v8, v6}, Landroid/widget/Magnifier$Builder;->setSourceSize(II)Landroid/widget/Magnifier$Builder;

    move-result-object v9

    const/4 v10, 0x0

    .line 694
    invoke-virtual {v9, v10}, Landroid/widget/Magnifier$Builder;->setElevation(F)Landroid/widget/Magnifier$Builder;

    move-result-object v9

    .line 695
    invoke-virtual {v9, v1}, Landroid/widget/Magnifier$Builder;->setInitialZoom(F)Landroid/widget/Magnifier$Builder;

    move-result-object v9

    .line 696
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Magnifier$Builder;->setClippingEnabled(Z)Landroid/widget/Magnifier$Builder;

    .line 698
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 699
    .local v9, "context":Landroid/content/Context;
    const/4 v11, 0x0

    sget-object v12, Lcom/android/internal/R$styleable;->Magnifier:[I

    const v13, 0x112009a

    invoke-virtual {v9, v11, v12, v13, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 702
    .local v11, "a":Landroid/content/res/TypedArray;
    const/4 v12, 0x3

    .line 703
    invoke-virtual {v11, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    const/4 v13, 0x4

    .line 705
    invoke-virtual {v11, v13, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 702
    invoke-virtual {v0, v12, v13}, Landroid/widget/Magnifier$Builder;->setDefaultSourceToMagnifierOffset(II)Landroid/widget/Magnifier$Builder;

    .line 707
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 709
    invoke-virtual {v0, v5, v10, v5, v10}, Landroid/widget/Magnifier$Builder;->setSourceBounds(IIII)Landroid/widget/Magnifier$Builder;

    move-result-object v5

    return-object v5
.end method

.method private blacklist deleteSourceAfterLocalDrop(Landroid/widget/Editor$DragLocalState;II)V
    .locals 7
    .param p1, "dragLocalState"    # Landroid/widget/Editor$DragLocalState;
    .param p2, "dropOffset"    # I
    .param p3, "lengthBeforeDrop"    # I

    .line 3437
    iget v0, p1, Landroid/widget/Editor$DragLocalState;->start:I

    .line 3438
    .local v0, "dragSourceStart":I
    iget v1, p1, Landroid/widget/Editor$DragLocalState;->end:I

    .line 3439
    .local v1, "dragSourceEnd":I
    if-gt p2, v0, :cond_0

    .line 3441
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    .line 3442
    .local v2, "shift":I
    add-int/2addr v0, v2

    .line 3443
    add-int/2addr v1, v2

    .line 3447
    .end local v2    # "shift":I
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 3450
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3451
    .local v2, "prevCharIdx":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3452
    .local v4, "nextCharIdx":I
    add-int/lit8 v5, v2, 0x1

    if-le v4, v5, :cond_1

    .line 3453
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v4}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3454
    .local v5, "t":Ljava/lang/CharSequence;
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

    .line 3455
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v2, v6}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 3458
    .end local v5    # "t":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method private greylist-max-o discardTextDisplayLists()V
    .locals 3

    .line 909
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_2

    .line 910
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 911
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 912
    iget-object v1, v1, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/graphics/RenderNode;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 913
    .local v1, "displayList":Landroid/graphics/RenderNode;
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 914
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->discardDisplayList()V

    .line 910
    .end local v1    # "displayList":Landroid/graphics/RenderNode;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 918
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist dismissMagnifierForDrag()V
    .locals 1

    .line 9919
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    if-eqz v0, :cond_0

    .line 9920
    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mdismiss(Landroid/widget/Editor$MagnifierMotionAnimator;)V

    .line 9921
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    .line 9922
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 9924
    :cond_0
    return-void
.end method

.method private greylist-max-o downgradeEasyCorrectionSpans()V
    .locals 6

    .line 1842
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1843
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 1844
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    .line 1845
    .local v1, "spannable":Landroid/text/Spannable;
    const/4 v2, 0x0

    .line 1846
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/style/SuggestionSpan;

    .line 1845
    invoke-interface {v1, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 1847
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 1848
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v4

    .line 1849
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_0

    and-int/lit8 v5, v4, 0xa

    if-nez v5, :cond_0

    .line 1851
    and-int/lit8 v4, v4, -0x2

    .line 1852
    aget-object v5, v2, v3

    invoke-virtual {v5, v4}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 1847
    .end local v4    # "flags":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1856
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist drawCursor(Landroid/graphics/Canvas;II)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cursorOffsetHorizontal"    # I
    .param p3, "cursorOffsetVertical"    # I

    .line 2517
    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2518
    .local v0, "translate":Z
    :goto_1
    if-eqz v0, :cond_2

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2519
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 2520
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2522
    :cond_3
    if-eqz v0, :cond_4

    neg-int v1, p2

    int-to-float v1, v1

    neg-int v2, p3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2523
    :cond_4
    return-void
.end method

.method private greylist-max-o drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .line 2340
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v13, v12}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v14

    .line 2341
    .local v14, "lineRange":J
    invoke-static {v14, v15}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v10

    .line 2342
    .local v10, "firstLine":I
    invoke-static {v14, v15}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v9

    .line 2343
    .local v9, "lastLine":I
    if-gez v9, :cond_0

    return-void

    .line 2345
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move v5, v10

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 2348
    instance-of v0, v13, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_d

    .line 2349
    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-nez v0, :cond_1

    .line 2350
    const-class v0, Landroid/widget/Editor$TextRenderNode;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/Editor$TextRenderNode;

    iput-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 2353
    :cond_1
    move-object v8, v13

    check-cast v8, Landroid/text/DynamicLayout;

    .line 2354
    .local v8, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v7

    .line 2355
    .local v7, "blockEndLines":[I
    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v16

    .line 2356
    .local v16, "blockIndices":[I
    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v6

    .line 2357
    .local v6, "numberOfBlocks":I
    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    move-result v5

    .line 2359
    .local v5, "indexFirstChangedBlock":I
    invoke-virtual {v8}, Landroid/text/DynamicLayout;->getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;

    move-result-object v4

    .line 2360
    .local v4, "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v3, -0x1

    const/4 v2, 0x1

    if-eqz v4, :cond_3

    .line 2361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2362
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    move-result v1

    .line 2363
    .local v1, "blockIndex":I
    if-eq v1, v3, :cond_2

    iget-object v3, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 2365
    iput-boolean v2, v3, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 2361
    .end local v1    # "blockIndex":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    const/4 v3, -0x1

    goto :goto_0

    .line 2370
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    invoke-static {v7, v0, v6, v10}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 2371
    .local v0, "startBlock":I
    if-gez v0, :cond_4

    .line 2372
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 2374
    :cond_4
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 2376
    .end local v0    # "startBlock":I
    .local v18, "startBlock":I
    const/4 v0, 0x0

    .line 2377
    .local v0, "startIndexToFindAvailableRenderNode":I
    move/from16 v19, v6

    .line 2379
    .local v19, "lastIndex":I
    move/from16 v1, v18

    move/from16 v20, v0

    move v3, v1

    .end local v0    # "startIndexToFindAvailableRenderNode":I
    .local v3, "i":I
    .local v20, "startIndexToFindAvailableRenderNode":I
    :goto_1
    if-ge v3, v6, :cond_8

    .line 2380
    aget v1, v16, v3

    .line 2381
    .restart local v1    # "blockIndex":I
    if-lt v3, v5, :cond_5

    const/4 v0, -0x1

    if-eq v1, v0, :cond_5

    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 2384
    iput-boolean v2, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 2386
    :cond_5
    aget v0, v7, v3

    if-ge v0, v10, :cond_6

    .line 2389
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

    goto :goto_2

    .line 2391
    :cond_6
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v21, v1

    .end local v1    # "blockIndex":I
    .local v21, "blockIndex":I
    move-object/from16 v1, p1

    move/from16 v22, v2

    move-object/from16 v2, p2

    move-wide/from16 v23, v14

    move/from16 v14, v17

    move/from16 v17, v3

    .end local v3    # "i":I
    .end local v14    # "lineRange":J
    .local v17, "i":I
    .local v23, "lineRange":J
    move-object/from16 v3, p3

    move-object v15, v4

    .end local v4    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v15, "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move-object/from16 v4, p4

    move v14, v5

    .end local v5    # "indexFirstChangedBlock":I
    .local v14, "indexFirstChangedBlock":I
    move/from16 v5, p5

    move/from16 v25, v6

    .end local v6    # "numberOfBlocks":I
    .local v25, "numberOfBlocks":I
    move-object v6, v7

    move-object/from16 v26, v7

    .end local v7    # "blockEndLines":[I
    .local v26, "blockEndLines":[I
    move-object/from16 v7, v16

    move-object v12, v8

    .end local v8    # "dynamicLayout":Landroid/text/DynamicLayout;
    .local v12, "dynamicLayout":Landroid/text/DynamicLayout;
    move/from16 v8, v17

    move v13, v9

    .end local v9    # "lastLine":I
    .local v13, "lastLine":I
    move/from16 v9, v25

    move/from16 v27, v10

    .end local v10    # "firstLine":I
    .local v27, "firstLine":I
    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    move-result v20

    .line 2394
    aget v0, v26, v17

    if-lt v0, v13, :cond_7

    .line 2395
    add-int/lit8 v3, v17, 0x1

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 2396
    move/from16 v10, v19

    goto :goto_3

    .line 2379
    .end local v21    # "blockIndex":I
    :cond_7
    :goto_2
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

    .end local v17    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .end local v12    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v13    # "lastLine":I
    .end local v15    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v23    # "lineRange":J
    .end local v25    # "numberOfBlocks":I
    .end local v26    # "blockEndLines":[I
    .end local v27    # "firstLine":I
    .restart local v4    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v5    # "indexFirstChangedBlock":I
    .restart local v6    # "numberOfBlocks":I
    .restart local v7    # "blockEndLines":[I
    .restart local v8    # "dynamicLayout":Landroid/text/DynamicLayout;
    .restart local v9    # "lastLine":I
    .restart local v10    # "firstLine":I
    .local v14, "lineRange":J
    :cond_8
    move/from16 v17, v3

    move/from16 v25, v6

    move-object/from16 v26, v7

    move-object v12, v8

    move v13, v9

    move/from16 v27, v10

    move-wide/from16 v23, v14

    move-object v15, v4

    move v14, v5

    .end local v3    # "i":I
    .end local v4    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v5    # "indexFirstChangedBlock":I
    .end local v6    # "numberOfBlocks":I
    .end local v7    # "blockEndLines":[I
    .end local v8    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v9    # "lastLine":I
    .end local v10    # "firstLine":I
    .restart local v12    # "dynamicLayout":Landroid/text/DynamicLayout;
    .restart local v13    # "lastLine":I
    .local v14, "indexFirstChangedBlock":I
    .restart local v15    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v17    # "i":I
    .restart local v23    # "lineRange":J
    .restart local v25    # "numberOfBlocks":I
    .restart local v26    # "blockEndLines":[I
    .restart local v27    # "firstLine":I
    move/from16 v10, v19

    .line 2399
    .end local v17    # "i":I
    .end local v19    # "lastIndex":I
    .local v10, "lastIndex":I
    :goto_3
    if-eqz v15, :cond_c

    .line 2400
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_4
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v9, v0, :cond_b

    .line 2401
    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2402
    .local v8, "block":I
    invoke-virtual {v12, v8}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    move-result v7

    .line 2403
    .local v7, "blockIndex":I
    const/4 v6, -0x1

    if-eq v7, v6, :cond_a

    iget-object v0, v11, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v7

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v17, v6

    move/from16 v22, v9

    move v11, v10

    goto :goto_6

    .line 2406
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v17, v6

    move-object/from16 v6, v26

    move/from16 v19, v7

    .end local v7    # "blockIndex":I
    .local v19, "blockIndex":I
    move-object/from16 v7, v16

    move/from16 v21, v8

    .end local v8    # "block":I
    .local v21, "block":I
    move/from16 v22, v9

    .end local v9    # "i":I
    .local v22, "i":I
    move/from16 v9, v25

    move v11, v10

    .end local v10    # "lastIndex":I
    .local v11, "lastIndex":I
    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    move-result v20

    .line 2400
    .end local v19    # "blockIndex":I
    .end local v21    # "block":I
    :goto_6
    add-int/lit8 v9, v22, 0x1

    move v10, v11

    move-object/from16 v11, p0

    .end local v22    # "i":I
    .restart local v9    # "i":I
    goto :goto_4

    .end local v11    # "lastIndex":I
    .restart local v10    # "lastIndex":I
    :cond_b
    move/from16 v22, v9

    move v11, v10

    .end local v9    # "i":I
    .end local v10    # "lastIndex":I
    .restart local v11    # "lastIndex":I
    .restart local v22    # "i":I
    goto :goto_7

    .line 2399
    .end local v11    # "lastIndex":I
    .end local v22    # "i":I
    .restart local v10    # "lastIndex":I
    :cond_c
    move v11, v10

    .line 2414
    .end local v10    # "lastIndex":I
    .restart local v11    # "lastIndex":I
    :goto_7
    invoke-virtual {v12, v11}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    .line 2415
    .end local v11    # "lastIndex":I
    .end local v12    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v14    # "indexFirstChangedBlock":I
    .end local v15    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v16    # "blockIndices":[I
    .end local v18    # "startBlock":I
    .end local v20    # "startIndexToFindAvailableRenderNode":I
    .end local v25    # "numberOfBlocks":I
    .end local v26    # "blockEndLines":[I
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move v3, v13

    move/from16 v2, v27

    goto :goto_8

    .line 2417
    .end local v13    # "lastLine":I
    .end local v23    # "lineRange":J
    .end local v27    # "firstLine":I
    .local v9, "lastLine":I
    .local v10, "firstLine":I
    .local v14, "lineRange":J
    :cond_d
    move v13, v9

    move/from16 v27, v10

    move-wide/from16 v23, v14

    .end local v9    # "lastLine":I
    .end local v10    # "firstLine":I
    .end local v14    # "lineRange":J
    .restart local v13    # "lastLine":I
    .restart local v23    # "lineRange":J
    .restart local v27    # "firstLine":I
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move v3, v13

    move/from16 v2, v27

    .end local v13    # "lastLine":I
    .end local v27    # "firstLine":I
    .local v2, "firstLine":I
    .local v3, "lastLine":I
    invoke-virtual {v1, v0, v2, v3}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 2419
    :goto_8
    return-void
.end method

.method private greylist-max-o drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I
    .param p6, "blockEndLines"    # [I
    .param p7, "blockIndices"    # [I
    .param p8, "blockInfoIndex"    # I
    .param p9, "numberOfBlocks"    # I
    .param p10, "startIndexToFindAvailableRenderNode"    # I

    .line 2425
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    aget v4, p6, p8

    .line 2426
    .local v4, "blockEndLine":I
    aget v0, v3, p8

    .line 2428
    .local v0, "blockIndex":I
    const/4 v5, 0x1

    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 2429
    .local v7, "blockIsInvalid":Z
    :goto_0
    if-eqz v7, :cond_2

    .line 2430
    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct {v1, v3, v8, v9}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v0

    .line 2433
    aput v0, v3, p8

    .line 2434
    iget-object v10, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v10, v10, v0

    if-eqz v10, :cond_1

    .line 2435
    iput-boolean v5, v10, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2437
    :cond_1
    add-int/lit8 v9, v0, 0x1

    move v10, v0

    .end local p10    # "startIndexToFindAvailableRenderNode":I
    .local v9, "startIndexToFindAvailableRenderNode":I
    goto :goto_1

    .line 2429
    .end local v9    # "startIndexToFindAvailableRenderNode":I
    .restart local p10    # "startIndexToFindAvailableRenderNode":I
    :cond_2
    move/from16 v8, p9

    move/from16 v9, p10

    move v10, v0

    .line 2440
    .end local v0    # "blockIndex":I
    .end local p10    # "startIndexToFindAvailableRenderNode":I
    .restart local v9    # "startIndexToFindAvailableRenderNode":I
    .local v10, "blockIndex":I
    :goto_1
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v11, v0, v10

    if-nez v11, :cond_3

    .line 2441
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

    .line 2444
    :cond_3
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/widget/Editor$TextRenderNode;->needsRecord()Z

    move-result v11

    .line 2445
    .local v11, "blockDisplayListIsInvalid":Z
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    iget-object v12, v0, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/graphics/RenderNode;

    .line 2446
    .local v12, "blockDisplayList":Landroid/graphics/RenderNode;
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    iget-boolean v0, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    if-nez v0, :cond_5

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v16, v7

    goto/16 :goto_7

    .line 2447
    :cond_5
    :goto_2
    if-nez p8, :cond_6

    .line 2448
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v0, p8, -0x1

    aget v0, p6, v0

    add-int/2addr v0, v5

    :goto_3
    move v5, v0

    .line 2449
    .local v5, "blockBeginLine":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    .line 2450
    .local v13, "top":I
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v14

    .line 2451
    .local v14, "bottom":I
    const/4 v0, 0x0

    .line 2452
    .local v0, "left":I
    iget-object v15, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v15

    .line 2453
    .local v15, "right":I
    iget-object v6, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2454
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 2455
    .local v6, "min":F
    const/16 v16, 0x1

    .line 2456
    .local v16, "max":F
    move/from16 v17, v5

    move/from16 p10, v0

    move/from16 v0, v16

    move/from16 v3, v17

    .end local v16    # "max":F
    .local v0, "max":F
    .local v3, "line":I
    .local p10, "left":I
    :goto_4
    if-gt v3, v4, :cond_7

    .line 2457
    move/from16 v16, v7

    .end local v7    # "blockIsInvalid":Z
    .local v16, "blockIsInvalid":Z
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 2458
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2456
    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v16

    goto :goto_4

    .end local v16    # "blockIsInvalid":Z
    .restart local v7    # "blockIsInvalid":Z
    :cond_7
    move/from16 v16, v7

    .line 2460
    .end local v3    # "line":I
    .end local v7    # "blockIsInvalid":Z
    .restart local v16    # "blockIsInvalid":Z
    float-to-int v3, v6

    .line 2461
    .end local p10    # "left":I
    .local v3, "left":I
    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v7, v0

    float-to-int v15, v7

    goto :goto_5

    .line 2453
    .end local v3    # "left":I
    .end local v6    # "min":F
    .end local v16    # "blockIsInvalid":Z
    .local v0, "left":I
    .restart local v7    # "blockIsInvalid":Z
    :cond_8
    move/from16 p10, v0

    move/from16 v16, v7

    .end local v0    # "left":I
    .end local v7    # "blockIsInvalid":Z
    .restart local v16    # "blockIsInvalid":Z
    .restart local p10    # "left":I
    move/from16 v3, p10

    .line 2465
    .end local p10    # "left":I
    .restart local v3    # "left":I
    :goto_5
    if-eqz v11, :cond_a

    .line 2466
    sub-int v0, v15, v3

    sub-int v6, v14, v13

    invoke-virtual {v12, v0, v6}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v6

    .line 2471
    .local v6, "recordingCanvas":Landroid/graphics/RecordingCanvas;
    neg-int v0, v3

    int-to-float v0, v0

    neg-int v7, v13

    int-to-float v7, v7

    :try_start_0
    invoke-virtual {v6, v0, v7}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 2472
    invoke-virtual {v2, v6, v5, v4}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 2474
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->canPrintLagLog()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2475
    const-string v0, "PF_LAG"

    const-string v7, "drawText"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    :cond_9
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/Editor$TextRenderNode;->isDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2482
    invoke-virtual {v12}, Landroid/graphics/RenderNode;->endRecording()V

    .line 2484
    invoke-virtual {v12, v7}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 2485
    const/4 v7, 0x0

    goto :goto_6

    .line 2482
    :catchall_0
    move-exception v0

    invoke-virtual {v12}, Landroid/graphics/RenderNode;->endRecording()V

    .line 2484
    const/4 v7, 0x0

    invoke-virtual {v12, v7}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 2485
    throw v0

    .line 2465
    .end local v6    # "recordingCanvas":Landroid/graphics/RecordingCanvas;
    :cond_a
    const/4 v7, 0x0

    .line 2489
    :goto_6
    invoke-virtual {v12, v3, v13, v15, v14}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 2490
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    iput-boolean v7, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 2492
    .end local v3    # "left":I
    .end local v5    # "blockBeginLine":I
    .end local v13    # "top":I
    .end local v14    # "bottom":I
    .end local v15    # "right":I
    :goto_7
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    invoke-virtual {v0, v12}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 2493
    return v9
.end method

.method private greylist-max-o ensureNoSelectionIfNonSelectable()V
    .locals 3

    .line 1827
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1832
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 1831
    invoke-static {v0, v1, v2}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 1835
    :cond_0
    return-void
.end method

.method private greylist-max-o extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 9
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "partialStartOffset"    # I
    .param p3, "partialEndOffset"    # I
    .param p4, "delta"    # I
    .param p5, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .line 2141
    const/4 v0, 0x0

    if-eqz p1, :cond_e

    if-nez p5, :cond_0

    goto/16 :goto_5

    .line 2145
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2146
    .local v1, "content":Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    .line 2147
    return v0

    .line 2150
    :cond_1
    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq p2, v2, :cond_b

    .line 2151
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2152
    .local v2, "N":I
    if-gez p2, :cond_2

    .line 2153
    const/4 v4, -0x1

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2154
    const/4 p2, 0x0

    .line 2155
    move p3, v2

    goto :goto_2

    .line 2159
    :cond_2
    add-int/2addr p3, p4

    .line 2161
    instance-of v4, v1, Landroid/text/Spanned;

    if-eqz v4, :cond_5

    .line 2162
    move-object v4, v1

    check-cast v4, Landroid/text/Spanned;

    .line 2163
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v5, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 2165
    .local v5, "spans":[Ljava/lang/Object;
    array-length v6, v5

    .line 2166
    .local v6, "i":I
    :goto_0
    if-lez v6, :cond_5

    .line 2167
    add-int/lit8 v6, v6, -0x1

    .line 2168
    aget-object v7, v5, v6

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 2169
    .local v7, "j":I
    if-ge v7, p2, :cond_3

    move p2, v7

    .line 2170
    :cond_3
    aget-object v8, v5, v6

    invoke-interface {v4, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 2171
    if-le v7, p3, :cond_4

    move p3, v7

    .line 2172
    .end local v7    # "j":I
    :cond_4
    goto :goto_0

    .line 2174
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    .end local v6    # "i":I
    :cond_5
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2175
    sub-int v4, p3, p4

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 2177
    if-le p2, v2, :cond_6

    .line 2178
    move p2, v2

    goto :goto_1

    .line 2179
    :cond_6
    if-gez p2, :cond_7

    .line 2180
    const/4 p2, 0x0

    .line 2182
    :cond_7
    :goto_1
    if-le p3, v2, :cond_8

    .line 2183
    move p3, v2

    goto :goto_2

    .line 2184
    :cond_8
    if-gez p3, :cond_9

    .line 2185
    const/4 p3, 0x0

    .line 2188
    :cond_9
    :goto_2
    iget v4, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_a

    .line 2189
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_3

    .line 2192
    :cond_a
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 2195
    .end local v2    # "N":I
    :goto_3
    goto :goto_4

    .line 2196
    :cond_b
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2197
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 2198
    const-string v2, ""

    iput-object v2, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 2200
    :goto_4
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2201
    const/16 v2, 0x800

    invoke-static {v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    if-eqz v2, :cond_c

    .line 2202
    iget v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2204
    :cond_c
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2205
    iget v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/2addr v2, v3

    iput v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2207
    :cond_d
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 2208
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 2209
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 2210
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p5, Landroid/view/inputmethod/ExtractedText;->hint:Ljava/lang/CharSequence;

    .line 2211
    return v3

    .line 2142
    .end local v1    # "content":Ljava/lang/CharSequence;
    :cond_e
    :goto_5
    return v0
.end method

.method private greylist-max-o extractedTextModeWillBeStarted()Z
    .locals 3

    .line 2841
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2842
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2843
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2845
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v1
.end method

.method private greylist-max-o findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .locals 8
    .param p1, "suggestionSpanInfo"    # Landroid/widget/Editor$SuggestionSpanInfo;

    .line 3587
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 3588
    .local v0, "editable":Landroid/text/Editable;
    iget-object v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 3590
    iget-object v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    return-object v1

    .line 3594
    :cond_0
    iget v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    iget v2, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    const-class v3, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 3596
    .local v1, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 3597
    .local v4, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 3598
    .local v5, "start":I
    iget v6, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    if-eq v5, v6, :cond_1

    .line 3599
    goto :goto_1

    .line 3601
    :cond_1
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 3602
    .local v6, "end":I
    iget v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    if-eq v6, v7, :cond_2

    .line 3603
    goto :goto_1

    .line 3605
    :cond_2
    iget-object v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-virtual {v4, v7}, Landroid/text/style/SuggestionSpan;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3606
    return-object v4

    .line 3596
    .end local v4    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v5    # "start":I
    .end local v6    # "end":I
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3609
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist getActiveLayout()Landroid/text/Layout;
    .locals 3

    .line 10010
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 10011
    .local v0, "layout":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v1

    .line 10012
    .local v1, "hintLayout":Landroid/text/Layout;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 10013
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10014
    move-object v0, v1

    .line 10016
    :cond_0
    return-object v0
.end method

.method private greylist-max-o getAvailableDisplayListIndex([III)I
    .locals 5
    .param p1, "blockIndices"    # [I
    .param p2, "numberOfBlocks"    # I
    .param p3, "searchStartIndex"    # I

    .line 2498
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v0, v0

    .line 2499
    .local v0, "length":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2500
    const/4 v2, 0x0

    .line 2501
    .local v2, "blockIndexFound":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p2, :cond_1

    .line 2502
    aget v4, p1, v3

    if-ne v4, v1, :cond_0

    .line 2503
    const/4 v2, 0x1

    .line 2504
    goto :goto_2

    .line 2501
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2507
    .end local v3    # "j":I
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 2499
    .end local v2    # "blockIndexFound":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2508
    .restart local v2    # "blockIndexFound":Z
    :cond_2
    return v1

    .line 2512
    .end local v1    # "i":I
    .end local v2    # "blockIndexFound":Z
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/widget/Editor$TextRenderNode;

    iput-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 2513
    return v0
.end method

.method private greylist-max-o getCharClusterRange(I)J
    .locals 5
    .param p1, "offset"    # I

    .line 1490
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1491
    .local v0, "textLength":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    .line 1492
    invoke-direct {p0, p1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v2

    .line 1493
    .local v2, "clusterEndOffset":I
    nop

    .line 1494
    invoke-direct {p0, v2, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v1

    .line 1493
    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3

    .line 1496
    .end local v2    # "clusterEndOffset":I
    :cond_0
    add-int/lit8 v3, p1, -0x1

    if-ltz v3, :cond_1

    .line 1497
    invoke-direct {p0, p1, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v1

    .line 1498
    .local v1, "clusterStartOffset":I
    nop

    .line 1499
    invoke-direct {p0, v1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v2

    .line 1498
    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 1501
    .end local v1    # "clusterStartOffset":I
    :cond_1
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    return-wide v1
.end method

.method private greylist-max-o getErrorX()I
    .locals 6

    .line 1006
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1008
    .local v0, "scale":F
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1010
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    .line 1013
    .local v2, "layoutDirection":I
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    .line 1016
    if-eqz v1, :cond_1

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_0

    .line 1021
    :pswitch_0
    if-eqz v1, :cond_0

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :cond_0
    div-int/lit8 v5, v5, 0x2

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v5, v3

    .line 1022
    .local v5, "offset":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v5

    .local v3, "errorX":I
    goto :goto_1

    .line 1016
    .end local v3    # "errorX":I
    .end local v5    # "offset":I
    :cond_1
    :goto_0
    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int/2addr v5, v3

    .line 1017
    .restart local v5    # "offset":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1018
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v5

    .line 1019
    .restart local v3    # "errorX":I
    nop

    .line 1025
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

    .line 1037
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 1038
    .local v0, "compoundPaddingTop":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1039
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 1041
    .local v1, "vspace":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1043
    .local v2, "dr":Landroid/widget/TextView$Drawables;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v3

    .line 1045
    .local v3, "layoutDirection":I
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 1048
    if-eqz v2, :cond_1

    iget v4, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    .line 1051
    :pswitch_0
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .local v4, "height":I
    :cond_0
    goto :goto_1

    .line 1049
    :cond_1
    :goto_0
    nop

    .line 1055
    :goto_1
    sub-int v5, v1, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    .line 1061
    .local v5, "icontop":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 1062
    .local v6, "scale":F
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

    .line 2035
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

    .line 1878
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_1

    .line 1879
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 1880
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_1

    .line 1882
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1883
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1885
    :cond_0
    return v0

    .line 1889
    .end local v0    # "lastTapPosition":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o getLastTouchOffsets()J
    .locals 5

    .line 1714
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 1715
    .local v0, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1716
    .local v1, "minOffset":I
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v2

    .line 1717
    .local v2, "maxOffset":I
    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3
.end method

.method private blacklist getMagnifierAnimator()Landroid/widget/Editor$MagnifierMotionAnimator;
    .locals 4

    .line 648
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    if-nez v0, :cond_1

    .line 651
    iget-boolean v0, p0, Landroid/widget/Editor;->mNewMagnifierEnabled:Z

    if-eqz v0, :cond_0

    .line 652
    invoke-direct {p0}, Landroid/widget/Editor;->createBuilderWithInlineMagnifierDefaults()Landroid/widget/Magnifier$Builder;

    move-result-object v0

    goto :goto_0

    .line 653
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/Magnifier;->createBuilderWithOldMagnifierDefaults(Landroid/view/View;)Landroid/widget/Magnifier$Builder;

    move-result-object v0

    :goto_0
    nop

    .line 654
    .local v0, "builder":Landroid/widget/Magnifier$Builder;
    new-instance v1, Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-virtual {v0}, Landroid/widget/Magnifier$Builder;->build()Landroid/widget/Magnifier;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/Editor$MagnifierMotionAnimator;-><init>(Landroid/widget/Magnifier;Landroid/widget/Editor$MagnifierMotionAnimator-IA;)V

    iput-object v1, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    .line 656
    .end local v0    # "builder":Landroid/widget/Magnifier$Builder;
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    return-object v0
.end method

.method private greylist-max-o getNextCursorOffset(IZ)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "findAfterGivenOffset"    # Z

    .line 1483
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1484
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    return p1

    .line 1485
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    if-ne p2, v1, :cond_1

    .line 1486
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .line 1485
    :goto_0
    return v1
.end method

.method private greylist-max-o getParagraphsRange(II)J
    .locals 7
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I

    .line 1425
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1426
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 1427
    const/4 v1, -0x1

    invoke-static {v1, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    return-wide v1

    .line 1429
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1430
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1432
    .local v2, "minLine":I
    :goto_0
    const/16 v3, 0xa

    if-lez v2, :cond_2

    .line 1433
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1434
    .local v4, "prevLineEndOffset":I
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_1

    .line 1435
    goto :goto_1

    .line 1437
    :cond_1
    nop

    .end local v4    # "prevLineEndOffset":I
    add-int/lit8 v2, v2, -0x1

    .line 1438
    goto :goto_0

    .line 1439
    :cond_2
    :goto_1
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 1441
    .local v4, "maxLine":I
    :goto_2
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_4

    .line 1442
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1443
    .local v5, "lineEndOffset":I
    add-int/lit8 v6, v5, -0x1

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_3

    .line 1444
    goto :goto_3

    .line 1446
    :cond_3
    nop

    .end local v5    # "lineEndOffset":I
    add-int/lit8 v4, v4, 0x1

    .line 1447
    goto :goto_2

    .line 1448
    :cond_4
    :goto_3
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    return-wide v5
.end method

.method private greylist-max-o getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    .line 1530
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_0

    .line 1531
    new-instance v0, Landroid/widget/Editor$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$PositionListener-IA;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 1533
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private greylist-max-o getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;
    .locals 1

    .line 2720
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    if-nez v0, :cond_0

    .line 2721
    new-instance v0, Landroid/widget/SelectionActionModeHelper;

    invoke-direct {v0, p0}, Landroid/widget/SelectionActionModeHelper;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    .line 2723
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    return-object v0
.end method

.method private greylist-max-o getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;
    .locals 20
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 3285
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x109017b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 3287
    .local v1, "shadowView":Landroid/widget/FrameLayout;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3295
    .local v2, "shadowViewContents":Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 3305
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3315
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3318
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3322
    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 3323
    .local v6, "resources":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 3325
    .local v7, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    iget v9, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    .line 3328
    .local v8, "width":F
    const/high16 v9, 0x43f00000    # 480.0f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_0

    .line 3329
    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    const/high16 v10, 0x3f400000    # 0.75f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .local v9, "shadowViewMaxWidth":I
    goto :goto_0

    .line 3331
    .end local v9    # "shadowViewMaxWidth":I
    :cond_0
    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    const v10, 0x3f0ccccd    # 0.55f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 3333
    .restart local v9    # "shadowViewMaxWidth":I
    :goto_0
    const v10, 0x1050499

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 3335
    .local v10, "shadowViewMinWidth":I
    const v11, 0x1050497

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 3339
    .local v11, "shadowSize":I
    const/4 v12, 0x0

    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 3340
    .local v13, "size":I
    invoke-virtual {v1, v13, v13}, Landroid/widget/FrameLayout;->measure(II)V

    .line 3343
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    .line 3344
    .local v14, "measuredWidth":I
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    .line 3346
    .local v15, "measuredHeight":I
    mul-int/lit8 v16, v11, 0x2

    sub-int v12, v14, v16

    .line 3347
    .local v12, "contentWidth":I
    mul-int/lit8 v16, v11, 0x2

    sub-int v16, v15, v16

    .line 3349
    .local v16, "contentHeight":I
    const/high16 v0, 0x40000000    # 2.0f

    if-le v12, v9, :cond_1

    .line 3350
    mul-int/lit8 v18, v11, 0x2

    move-object/from16 v19, v3

    .end local v3    # "text":Ljava/lang/CharSequence;
    .local v19, "text":Ljava/lang/CharSequence;
    add-int v3, v9, v18

    .line 3351
    .local v3, "shadowWidth":I
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3352
    .local v0, "widthSpec":I
    move/from16 v18, v3

    const/4 v3, 0x0

    .end local v3    # "shadowWidth":I
    .local v18, "shadowWidth":I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3354
    .local v4, "heightSpec":I
    invoke-virtual {v1, v0, v4}, Landroid/widget/FrameLayout;->measure(II)V

    .line 3356
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    .line 3357
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    .line 3358
    .end local v0    # "widthSpec":I
    .end local v4    # "heightSpec":I
    .end local v18    # "shadowWidth":I
    move-object/from16 v18, v2

    const/4 v2, 0x0

    goto :goto_1

    .end local v19    # "text":Ljava/lang/CharSequence;
    .local v3, "text":Ljava/lang/CharSequence;
    :cond_1
    move-object/from16 v19, v3

    .end local v3    # "text":Ljava/lang/CharSequence;
    .restart local v19    # "text":Ljava/lang/CharSequence;
    if-ge v12, v10, :cond_2

    .line 3360
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    int-to-float v4, v10

    mul-float/2addr v3, v4

    int-to-float v4, v12

    div-float/2addr v3, v4

    .line 3361
    .local v3, "textSize":F
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3362
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 3364
    mul-int/lit8 v4, v11, 0x2

    add-int/2addr v4, v10

    .line 3365
    .local v4, "shadowWidth":I
    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3366
    .restart local v0    # "widthSpec":I
    move-object/from16 v18, v2

    move/from16 v17, v3

    const/4 v2, 0x0

    .end local v2    # "shadowViewContents":Landroid/widget/TextView;
    .end local v3    # "textSize":F
    .local v17, "textSize":F
    .local v18, "shadowViewContents":Landroid/widget/TextView;
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3368
    .local v3, "heightSpec":I
    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 3370
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    .line 3371
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    goto :goto_1

    .line 3358
    .end local v0    # "widthSpec":I
    .end local v3    # "heightSpec":I
    .end local v4    # "shadowWidth":I
    .end local v17    # "textSize":F
    .end local v18    # "shadowViewContents":Landroid/widget/TextView;
    .restart local v2    # "shadowViewContents":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v18, v2

    const/4 v2, 0x0

    .line 3374
    .end local v2    # "shadowViewContents":Landroid/widget/TextView;
    .restart local v18    # "shadowViewContents":Landroid/widget/TextView;
    :goto_1
    invoke-virtual {v1, v2, v2, v14, v15}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 3378
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3379
    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 3296
    .end local v6    # "resources":Landroid/content/res/Resources;
    .end local v7    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "width":F
    .end local v9    # "shadowViewMaxWidth":I
    .end local v10    # "shadowViewMinWidth":I
    .end local v11    # "shadowSize":I
    .end local v12    # "contentWidth":I
    .end local v13    # "size":I
    .end local v14    # "measuredWidth":I
    .end local v15    # "measuredHeight":I
    .end local v16    # "contentHeight":I
    .end local v18    # "shadowViewContents":Landroid/widget/TextView;
    .end local v19    # "text":Ljava/lang/CharSequence;
    .restart local v2    # "shadowViewContents":Landroid/widget/TextView;
    :cond_3
    move-object/from16 v18, v2

    .end local v2    # "shadowViewContents":Landroid/widget/TextView;
    .restart local v18    # "shadowViewContents":Landroid/widget/TextView;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to inflate text drag thumbnail"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getWordEnd(I)I
    .locals 2
    .param p1, "offset"    # I

    .line 1291
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result v0

    .line 1292
    .local v0, "retOffset":I
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1294
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationEnd(I)I

    move-result v0

    goto :goto_0

    .line 1297
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    move-result v0

    .line 1299
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1300
    return p1

    .line 1302
    :cond_1
    return v0
.end method

.method private greylist-max-o getWordIteratorWithText()Landroid/text/method/WordIterator;
    .locals 4

    .line 1466
    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    .line 1467
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 1468
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1470
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    if-eqz v0, :cond_1

    .line 1475
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1476
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 1477
    iput-boolean v3, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1479
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method private greylist-max-o getWordStart(I)I
    .locals 2
    .param p1, "offset"    # I

    .line 1276
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result v0

    .line 1277
    .local v0, "retOffset":I
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1279
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationBeginning(I)I

    move-result v0

    goto :goto_0

    .line 1282
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    move-result v0

    .line 1284
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1285
    return p1

    .line 1287
    :cond_1
    return v0
.end method

.method private greylist-max-o hideCursorControllers()V
    .locals 1

    .line 1154
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 1155
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1157
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 1159
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 1160
    return-void
.end method

.method private greylist-max-o hideError()V
    .locals 1

    .line 988
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 989
    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 994
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 995
    return-void
.end method

.method private greylist-max-o hideSpanControllers()V
    .locals 1

    .line 1144
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-eqz v0, :cond_0

    .line 1145
    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 1147
    :cond_0
    return-void
.end method

.method private greylist-max-o invalidateActionMode()V
    .locals 1

    .line 2714
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2715
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 2717
    :cond_0
    return-void
.end method

.method private greylist-max-o isCursorInsideEasyCorrectionSpan()Z
    .locals 5

    .line 2928
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 2929
    .local v0, "spannable":Landroid/text/Spannable;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2930
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    const-class v3, Landroid/text/style/SuggestionSpan;

    .line 2929
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 2931
    .local v1, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 2932
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 2933
    return v4

    .line 2931
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2936
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private greylist-max-o isCursorVisible()Z
    .locals 1

    .line 1079
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
    .locals 7
    .param p1, "offset"    # I

    .line 1542
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1543
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1545
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 1546
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 1547
    .local v2, "lineBottom":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v3, v3

    .line 1548
    .local v3, "primaryHorizontal":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1549
    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v5, v3

    int-to-float v5, v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1550
    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    .line 1548
    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v4

    return v4
.end method

.method private greylist-max-o isPositionOnText(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1557
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1558
    .local v0, "layout":Landroid/text/Layout;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1561
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getKeycodeDpadCenterStatus()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 1562
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 1563
    .local v2, "offset":I
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

    .line 1564
    return v1

    .line 1566
    :cond_1
    return v3

    .line 1571
    .end local v2    # "offset":I
    :cond_2
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v2

    .line 1572
    .local v2, "line":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 1574
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_3

    return v1

    .line 1575
    :cond_3
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_4

    return v1

    .line 1576
    :cond_4
    return v3
.end method

.method private blacklist isUniversalSwitchEnable()Z
    .locals 3

    .line 9981
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
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 9071
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

.method static varargs blacklist logCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "msgArgs"    # [Ljava/lang/Object;

    .line 9896
    const-string v0, "Editor"

    if-nez p1, :cond_0

    .line 9897
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9899
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

    .line 9901
    :goto_0
    return-void
.end method

.method private greylist-max-o needsToSelectAllToSelectWordOrParagraph()Z
    .locals 5

    .line 1306
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1310
    return v1

    .line 1313
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 1314
    .local v0, "inputType":I
    and-int/lit8 v2, v0, 0xf

    .line 1315
    .local v2, "klass":I
    and-int/lit16 v3, v0, 0xff0

    .line 1318
    .local v3, "variation":I
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

    .line 1327
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 1325
    :cond_2
    :goto_0
    return v1
.end method

.method private blacklist obtainMagnifierShowCoordinatesForDrag(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "showPosInView"    # Landroid/graphics/PointF;

    .line 9928
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 9929
    .local v0, "offset":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 9930
    return v1

    .line 9933
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 9934
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 9937
    .local v3, "lineNumber":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 9938
    .local v4, "textViewLocationOnScreen":[I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 9939
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    aget v6, v4, v1

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 9940
    .local v5, "touchXInView":F
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 9941
    .local v6, "leftBound":F
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollX()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 9942
    .local v7, "rightBound":F
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    add-float/2addr v6, v8

    .line 9943
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v8

    add-float/2addr v7, v8

    .line 9944
    iget-object v8, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-static {v8}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Magnifier;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-static {v9}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v9

    .line 9945
    invoke-virtual {v9}, Landroid/widget/Magnifier;->getZoom()F

    move-result v9

    div-float/2addr v8, v9

    .line 9944
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    .line 9946
    .local v8, "contentWidth":F
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

    .line 9951
    :cond_1
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 9954
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 9955
    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    add-int/2addr v1, v10

    int-to-float v1, v1

    div-float/2addr v1, v9

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 9956
    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v1, v9

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v1, v9

    iput v1, p2, Landroid/graphics/PointF;->y:F

    .line 9958
    const/4 v1, 0x1

    return v1

    .line 9949
    :cond_2
    :goto_0
    return v1
.end method

.method private blacklist registerOnBackInvokedCallback()V
    .locals 4

    .line 895
    iget-boolean v0, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    if-eqz v0, :cond_0

    .line 896
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 899
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 900
    invoke-static {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 902
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-virtual {v1, v2, v3}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 904
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    .line 906
    :cond_1
    return-void
.end method

.method private greylist-max-o replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V
    .locals 22
    .param p1, "suggestionInfo"    # Landroid/widget/Editor$SuggestionInfo;

    .line 3613
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-direct {v0, v2}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object v2

    .line 3615
    .local v2, "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    if-nez v2, :cond_0

    .line 3617
    return-void

    .line 3619
    :cond_0
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Editable;

    .line 3620
    .local v3, "editable":Landroid/text/Editable;
    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 3621
    .local v4, "spanStart":I
    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 3622
    .local v5, "spanEnd":I
    if-ltz v4, :cond_8

    if-gt v5, v4, :cond_1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    goto/16 :goto_3

    .line 3627
    :cond_1
    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    .line 3629
    .local v6, "originalText":Ljava/lang/String;
    const-class v7, Landroid/text/style/SuggestionSpan;

    invoke-interface {v3, v4, v5, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/SuggestionSpan;

    .line 3631
    .local v7, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v8, v7

    .line 3632
    .local v8, "length":I
    new-array v9, v8, [I

    .line 3633
    .local v9, "suggestionSpansStarts":[I
    new-array v10, v8, [I

    .line 3634
    .local v10, "suggestionSpansEnds":[I
    new-array v11, v8, [I

    .line 3635
    .local v11, "suggestionSpansFlags":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v8, :cond_3

    .line 3636
    aget-object v13, v7, v12

    .line 3637
    .local v13, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    aput v14, v9, v12

    .line 3638
    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    aput v14, v10, v12

    .line 3639
    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v14

    aput v14, v11, v12

    .line 3642
    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v14

    .line 3643
    .local v14, "suggestionSpanFlags":I
    and-int/lit8 v15, v14, 0xa

    if-eqz v15, :cond_2

    .line 3644
    and-int/lit8 v14, v14, -0x3

    .line 3645
    and-int/lit8 v14, v14, -0x9

    .line 3646
    and-int/lit8 v14, v14, -0x2

    .line 3647
    invoke-virtual {v13, v14}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 3635
    .end local v13    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v14    # "suggestionSpanFlags":I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 3652
    .end local v12    # "i":I
    :cond_3
    iget v12, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    .line 3653
    .local v12, "suggestionStart":I
    iget v13, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    .line 3654
    .local v13, "suggestionEnd":I
    iget-object v14, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v14, v12, v13}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    .line 3655
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3656
    .local v14, "suggestion":Ljava/lang/String;
    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v4, v5, v14}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 3658
    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v15

    .line 3659
    .local v15, "suggestions":[Ljava/lang/String;
    move-object/from16 v16, v2

    .end local v2    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .local v16, "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    iget v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    aput-object v6, v15, v2

    .line 3662
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v17, v5, v4

    sub-int v2, v2, v17

    .line 3663
    .local v2, "lengthDelta":I
    const/16 v17, 0x0

    move/from16 v1, v17

    .local v1, "i":I
    :goto_1
    if-ge v1, v8, :cond_6

    .line 3667
    move-object/from16 v17, v3

    .end local v3    # "editable":Landroid/text/Editable;
    .local v17, "editable":Landroid/text/Editable;
    aget v3, v9, v1

    if-gt v3, v4, :cond_5

    aget v3, v10, v1

    if-lt v3, v5, :cond_5

    aget v3, v10, v1

    add-int/2addr v3, v2

    move/from16 v18, v4

    .end local v4    # "spanStart":I
    .local v18, "spanStart":I
    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3670
    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-gt v3, v4, :cond_4

    .line 3672
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    aget-object v4, v7, v1

    move-object/from16 v19, v6

    .end local v6    # "originalText":Ljava/lang/String;
    .local v19, "originalText":Ljava/lang/String;
    aget v6, v9, v1

    aget v20, v10, v1

    move-object/from16 v21, v7

    .end local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .local v21, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    add-int v7, v20, v2

    move/from16 v20, v8

    .end local v8    # "length":I
    .local v20, "length":I
    aget v8, v11, v1

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    goto :goto_2

    .line 3670
    .end local v19    # "originalText":Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v6    # "originalText":Ljava/lang/String;
    .restart local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v8    # "length":I
    :cond_4
    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move/from16 v20, v8

    .end local v6    # "originalText":Ljava/lang/String;
    .end local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v8    # "length":I
    .restart local v19    # "originalText":Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    goto :goto_2

    .line 3667
    .end local v18    # "spanStart":I
    .end local v19    # "originalText":Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v4    # "spanStart":I
    .restart local v6    # "originalText":Ljava/lang/String;
    .restart local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v8    # "length":I
    :cond_5
    move/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move/from16 v20, v8

    .line 3663
    .end local v4    # "spanStart":I
    .end local v6    # "originalText":Ljava/lang/String;
    .end local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v8    # "length":I
    .restart local v18    # "spanStart":I
    .restart local v19    # "originalText":Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v6, v19

    move/from16 v8, v20

    move-object/from16 v7, v21

    goto :goto_1

    .end local v17    # "editable":Landroid/text/Editable;
    .end local v18    # "spanStart":I
    .end local v19    # "originalText":Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v3    # "editable":Landroid/text/Editable;
    .restart local v4    # "spanStart":I
    .restart local v6    # "originalText":Ljava/lang/String;
    .restart local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v8    # "length":I
    :cond_6
    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move/from16 v20, v8

    .line 3680
    .end local v1    # "i":I
    .end local v3    # "editable":Landroid/text/Editable;
    .end local v4    # "spanStart":I
    .end local v6    # "originalText":Ljava/lang/String;
    .end local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v8    # "length":I
    .restart local v17    # "editable":Landroid/text/Editable;
    .restart local v18    # "spanStart":I
    .restart local v19    # "originalText":Ljava/lang/String;
    .restart local v20    # "length":I
    .restart local v21    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    add-int v1, v5, v2

    .line 3681
    .local v1, "cursorPos":I
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-le v1, v3, :cond_7

    .line 3682
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 3683
    :cond_7
    move v3, v1

    .line 3685
    .local v3, "newCursorPosition":I
    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v3}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    .line 3686
    return-void

    .line 3622
    .end local v1    # "cursorPos":I
    .end local v9    # "suggestionSpansStarts":[I
    .end local v10    # "suggestionSpansEnds":[I
    .end local v11    # "suggestionSpansFlags":[I
    .end local v12    # "suggestionStart":I
    .end local v13    # "suggestionEnd":I
    .end local v14    # "suggestion":Ljava/lang/String;
    .end local v15    # "suggestions":[Ljava/lang/String;
    .end local v16    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v17    # "editable":Landroid/text/Editable;
    .end local v18    # "spanStart":I
    .end local v19    # "originalText":Ljava/lang/String;
    .end local v20    # "length":I
    .end local v21    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .local v2, "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .local v3, "editable":Landroid/text/Editable;
    .restart local v4    # "spanStart":I
    :cond_8
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    .line 3624
    .end local v2    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v3    # "editable":Landroid/text/Editable;
    .end local v4    # "spanStart":I
    .restart local v16    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .restart local v17    # "editable":Landroid/text/Editable;
    .restart local v18    # "spanStart":I
    :goto_3
    return-void
.end method

.method private greylist-max-o resumeBlink()V
    .locals 1

    .line 1211
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 1212
    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 1213
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1215
    :cond_0
    return-void
.end method

.method private greylist-max-o selectCurrentParagraph()Z
    .locals 9

    .line 1396
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1397
    return v1

    .line 1400
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1401
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0

    .line 1404
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    .line 1405
    .local v2, "lastTouchOffsets":J
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    .line 1406
    .local v0, "minLastTouchOffset":I
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v4

    .line 1408
    .local v4, "maxLastTouchOffset":I
    invoke-direct {p0, v0, v4}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide v5

    .line 1409
    .local v5, "paragraphsRange":J
    invoke-static {v5, v6}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    .line 1410
    .local v7, "start":I
    invoke-static {v5, v6}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v8

    .line 1411
    .local v8, "end":I
    if-ge v7, v8, :cond_2

    .line 1414
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v7, v8}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 1416
    const/4 v1, 0x1

    return v1

    .line 1418
    :cond_2
    return v1
.end method

.method private greylist-max-o selectCurrentWordAndStartDrag()Z
    .locals 2

    .line 2733
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2734
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2736
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2737
    return v1

    .line 2739
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2740
    return v1

    .line 2742
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2745
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    .line 2746
    invoke-direct {p0}, Landroid/widget/Editor;->dismissMagnifierForDrag()V

    .line 2748
    return v1

    .line 2750
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 2756
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 2757
    .local v0, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 2758
    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    .line 2762
    :cond_4
    return v1
.end method

.method private greylist-max-o sendUpdateSelection()V
    .locals 11

    .line 2263
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    if-nez v0, :cond_1

    .line 2265
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2266
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 2267
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 2268
    .local v7, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 2269
    .local v8, "selectionEnd":I
    const/4 v1, -0x1

    .line 2270
    .local v1, "candStart":I
    const/4 v2, -0x1

    .line 2271
    .local v2, "candEnd":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    .line 2272
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 2273
    .local v3, "sp":Landroid/text/Spannable;
    invoke-static {v3}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 2274
    invoke-static {v3}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    move v9, v1

    move v10, v2

    goto :goto_0

    .line 2271
    .end local v3    # "sp":Landroid/text/Spannable;
    :cond_0
    move v9, v1

    move v10, v2

    .line 2278
    .end local v1    # "candStart":I
    .end local v2    # "candEnd":I
    .local v9, "candStart":I
    .local v10, "candEnd":I
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object v1, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 2282
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v7    # "selectionStart":I
    .end local v8    # "selectionEnd":I
    .end local v9    # "candStart":I
    .end local v10    # "candEnd":I
    :cond_1
    return-void
.end method

.method private greylist-max-o setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 976
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 977
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez v0, :cond_0

    .line 978
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView$Drawables;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    iput-object v2, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 980
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    .line 982
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 983
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 984
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 985
    return-void
.end method

.method private greylist-max-o shouldBlink()Z
    .locals 3

    .line 3221
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorMoving:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3224
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 3225
    .local v0, "start":I
    if-gez v0, :cond_1

    return v1

    .line 3227
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 3228
    .local v2, "end":I
    if-gez v2, :cond_2

    return v1

    .line 3230
    :cond_2
    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 3221
    .end local v0    # "start":I
    .end local v2    # "end":I
    :cond_4
    :goto_0
    return v1
.end method

.method private greylist-max-o shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1923
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 1927
    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mLastButtonState:I

    .line 1928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    xor-int/2addr v0, v3

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1929
    .local v0, "primaryButtonStateChanged":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1930
    .local v3, "action":I
    if-eqz v3, :cond_2

    if-ne v3, v2, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 1932
    return v2

    .line 1934
    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 1935
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1936
    return v2

    .line 1938
    :cond_4
    return v1

    .line 1925
    .end local v0    # "primaryButtonStateChanged":Z
    .end local v3    # "action":I
    :cond_5
    :goto_1
    return v1
.end method

.method private greylist-max-o showError()V
    .locals 8

    .line 921
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 922
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 923
    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v0, :cond_2

    .line 927
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 930
    .local v0, "inflater":Landroid/view/LayoutInflater;
    nop

    .line 931
    iget-boolean v2, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    if-eqz v2, :cond_1

    const v2, 0x10901d2

    goto :goto_0

    .line 932
    :cond_1
    const v2, 0x10901a4

    :goto_0
    const/4 v3, 0x0

    .line 930
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 935
    .local v2, "err":Landroid/widget/TextView;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 936
    .local v3, "scale":F
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

    .line 938
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    .line 941
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v1}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    .line 944
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "err":Landroid/widget/TextView;
    .end local v3    # "scale":F
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 945
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 946
    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v3

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v4

    const/16 v5, 0x33

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;III)V

    .line 950
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    .line 951
    return-void
.end method

.method private greylist-max-o showFloatingToolbar()V
    .locals 5

    .line 2021
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2024
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 2025
    .local v0, "delay":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2030
    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateActionModeAsync()V

    .line 2032
    .end local v0    # "delay":I
    :cond_0
    return-void
.end method

.method private blacklist softInputShown()Z
    .locals 2

    .line 561
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 562
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
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

    .line 1580
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->onSelectionDrag()V

    .line 1583
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1584
    return-void

    .line 1586
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1587
    .local v0, "start":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1588
    .local v1, "end":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1589
    .local v2, "selectedText":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 1590
    .local v3, "data":Landroid/content/ClipData;
    new-instance v4, Landroid/widget/Editor$DragLocalState;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v4, v5, v0, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 1592
    .local v4, "localState":Landroid/widget/Editor$DragLocalState;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 1593
    .local v5, "audioManager":Landroid/media/AudioManager;
    if-eqz v5, :cond_1

    .line 1594
    const/16 v6, 0x6a

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 1596
    :cond_1
    const-string v6, "Editor"

    const-string/jumbo v7, "performSoundEffect: Couldn\'t get audio manager"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :goto_0
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor;->getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;

    move-result-object v7

    const/16 v8, 0x300

    invoke-virtual {v6, v3, v7, v4, v8}, Landroid/widget/TextView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 1610
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1611
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1612
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1614
    :cond_2
    return-void
.end method

.method private greylist-max-o stopTextActionModeWithPreservingSelection()V
    .locals 2

    .line 3070
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3071
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 3073
    :cond_0
    iput-boolean v1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 3074
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 3075
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 3076
    return-void
.end method

.method private greylist-max-o suspendBlink()V
    .locals 1

    .line 1205
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 1206
    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 1208
    :cond_0
    return-void
.end method

.method private blacklist toggleInsertionActionMode()V
    .locals 1

    .line 1698
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1699
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    goto :goto_0

    .line 1701
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 1703
    :goto_0
    return-void
.end method

.method private blacklist tooLargeTextForMagnifierForDrag()Z
    .locals 5

    .line 9906
    const/4 v0, 0x0

    .line 9907
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    if-eqz v1, :cond_1

    .line 9908
    invoke-static {v1}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v1

    .line 9909
    invoke-virtual {v1}, Landroid/widget/Magnifier;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-static {v2}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v2

    .line 9910
    invoke-virtual {v2}, Landroid/widget/Magnifier;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    .line 9908
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 9911
    .local v1, "magnifierContentHeight":F
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 9912
    .local v2, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    .line 9913
    .local v3, "glyphHeight":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v0, v4

    .line 9915
    .end local v1    # "magnifierContentHeight":F
    .end local v2    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v3    # "glyphHeight":F
    :cond_1
    return v0
.end method

.method private greylist-max-o touchPositionIsInSelection()Z
    .locals 6

    .line 1505
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1506
    .local v0, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1508
    .local v1, "selectionEnd":I
    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1509
    return v2

    .line 1512
    :cond_0
    if-le v0, v1, :cond_1

    .line 1513
    move v3, v0

    .line 1514
    .local v3, "tmp":I
    move v0, v1

    .line 1515
    move v1, v3

    .line 1518
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v0, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 1522
    .end local v3    # "tmp":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    .line 1523
    .local v3, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v4

    .line 1524
    .local v4, "minOffset":I
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v5

    .line 1526
    .local v5, "maxOffset":I
    if-lt v4, v0, :cond_2

    if-ge v5, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private blacklist unregisterOnBackInvokedCallback()V
    .locals 3

    .line 881
    iget-boolean v0, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    if-nez v0, :cond_0

    .line 882
    return-void

    .line 884
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 885
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 886
    invoke-static {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 889
    invoke-virtual {v1, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 890
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    .line 892
    :cond_1
    return-void
.end method

.method private greylist-max-o updateCursorPosition(IIF)V
    .locals 6
    .param p1, "top"    # I
    .param p2, "bottom"    # I
    .param p3, "horizontal"    # F

    .line 3133
    invoke-virtual {p0}, Landroid/widget/Editor;->loadCursorDrawable()V

    .line 3134
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p3}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result v0

    .line 3135
    .local v0, "left":I
    iget-object v1, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 3139
    .local v1, "width":I
    iget-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p1, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p2

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3141
    return-void
.end method

.method private greylist-max-o updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2001
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2002
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2004
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->hideFloatingToolbar(I)V

    .line 2005
    goto :goto_0

    .line 2008
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->showFloatingToolbar()V

    .line 2011
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
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 9962
    invoke-direct {p0}, Landroid/widget/Editor;->getMagnifierAnimator()Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9963
    return-void

    .line 9966
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 9967
    .local v0, "showPosInView":Landroid/graphics/PointF;
    invoke-direct {p0}, Landroid/widget/Editor;->tooLargeTextForMagnifierForDrag()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 9968
    invoke-direct {p0, p1, v0}, Landroid/widget/Editor;->obtainMagnifierShowCoordinatesForDrag(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 9969
    .local v1, "shouldShow":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 9971
    iput-boolean v2, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    .line 9972
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidateCursorPath()V

    .line 9973
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 9974
    iget-object v2, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3, v4}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mshow(Landroid/widget/Editor$MagnifierMotionAnimator;FF)V

    goto :goto_1

    .line 9976
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->dismissMagnifierForDrag()V

    .line 9978
    :goto_1
    return-void
.end method

.method private greylist-max-o updateSpellCheckSpans(IIZ)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    .line 1167
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 1168
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 1170
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1171
    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1172
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1173
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodSuppressingSpellChecker()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    return-void

    .line 1178
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    .line 1179
    new-instance v1, Landroid/widget/SpellChecker;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 1181
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v1, :cond_2

    .line 1182
    invoke-virtual {v1, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 1185
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    return-void
.end method


# virtual methods
.method public greylist-max-o addSpanWatchers(Landroid/text/Spannable;)V
    .locals 5
    .param p1, "text"    # Landroid/text/Spannable;

    .line 3461
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 3463
    .local v0, "textLength":I
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3464
    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3467
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-nez v1, :cond_1

    .line 3468
    new-instance v1, Landroid/widget/Editor$SpanController;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SpanController-IA;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    .line 3470
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3471
    return-void
.end method

.method greylist-max-o adjustInputType(ZZZZ)V
    .locals 3
    .param p1, "password"    # Z
    .param p2, "passwordInputType"    # Z
    .param p3, "webPasswordInputType"    # Z
    .param p4, "numberPasswordInputType"    # Z

    .line 1222
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1223
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 1224
    :cond_0
    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 1227
    :cond_1
    if-eqz p3, :cond_3

    .line 1228
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0

    .line 1231
    :cond_2
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1232
    if-eqz p4, :cond_3

    .line 1233
    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 1237
    :cond_3
    :goto_0
    return-void
.end method

.method public greylist-max-o beginBatchEdit()V
    .locals 4

    .line 2039
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 2040
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2041
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v1, :cond_1

    .line 2042
    iget v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 2043
    .local v2, "nesting":I
    if-ne v2, v0, :cond_1

    .line 2044
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 2045
    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 2046
    iget-boolean v3, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v3, :cond_0

    .line 2049
    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2050
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_0

    .line 2052
    :cond_0
    const/4 v3, -0x1

    iput v3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2053
    iput v3, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 2054
    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2056
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->beginBatchEdit()V

    .line 2057
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 2060
    .end local v2    # "nesting":I
    :cond_1
    return-void
.end method

.method greylist-max-o canRedo()Z
    .locals 4

    .line 762
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 763
    .local v1, "owners":[Landroid/content/UndoOwner;
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

    .line 757
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 758
    .local v1, "owners":[Landroid/content/UndoOwner;
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

    .line 2771
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2776
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2772
    :cond_1
    :goto_0
    const-string v0, "TextView"

    const-string v1, "TextView does not support text selection. Selection cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o createInputContentTypeIfNeeded()V
    .locals 1

    .line 1066
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_0

    .line 1067
    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 1069
    :cond_0
    return-void
.end method

.method greylist-max-o createInputMethodStateIfNeeded()V
    .locals 1

    .line 1072
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_0

    .line 1073
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1075
    :cond_0
    return-void
.end method

.method public blacklist editorShowSoftInput()Z
    .locals 1

    .line 557
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

    .line 2063
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 2064
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2065
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 2066
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 2067
    .local v1, "nesting":I
    if-nez v1, :cond_0

    .line 2068
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 2071
    .end local v1    # "nesting":I
    :cond_0
    return-void
.end method

.method greylist-max-o ensureEndedBatchEdit()V
    .locals 2

    .line 2074
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2075
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    .line 2076
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 2077
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 2079
    :cond_0
    return-void
.end method

.method greylist-max-o extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .line 2134
    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 2
    .param p1, "ims"    # Landroid/widget/Editor$InputMethodState;

    .line 2082
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 2083
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->endBatchEdit()V

    .line 2085
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2088
    :cond_0
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_2

    .line 2090
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_1

    .line 2086
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 2087
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 2094
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    .line 2097
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_4

    .line 2098
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2099
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    .line 2100
    .local v0, "cursorController":Landroid/widget/Editor$CursorController;
    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isActive()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2101
    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isCursorBeingModified()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2102
    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->show()V

    .line 2105
    .end local v0    # "cursorController":Landroid/widget/Editor$CursorController;
    :cond_4
    return-void
.end method

.method greylist-max-o forgetUndoRedo()V
    .locals 3

    .line 751
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/UndoOwner;

    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 752
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 753
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    .line 754
    return-void
.end method

.method public greylist-max-o getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    .locals 6
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "prevLine"    # I
    .param p3, "y"    # F

    .line 8066
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 8067
    .local v0, "trueLine":I
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-gt p2, v1, :cond_4

    .line 8068
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_4

    if-gez p2, :cond_0

    goto :goto_0

    .line 8073
    :cond_0
    sub-int v1, v0, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 8075
    return v0

    .line 8078
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 8079
    .local v1, "lineHeight":I
    iget v2, p0, Landroid/widget/Editor;->mLineSlopRatio:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 8080
    .local v2, "slop":I
    iget v3, p0, Landroid/widget/Editor;->mLineChangeSlopMin:I

    iget v4, p0, Landroid/widget/Editor;->mLineChangeSlopMax:I

    add-int v5, v1, v2

    .line 8081
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 8080
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v1

    .line 8082
    .end local v2    # "slop":I
    .local v3, "slop":I
    const/4 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8084
    .end local v3    # "slop":I
    .restart local v2    # "slop":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v3

    int-to-float v3, v3

    .line 8085
    .local v3, "verticalOffset":F
    if-le v0, p2, :cond_2

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, p3, v4

    if-ltz v4, :cond_2

    .line 8086
    return v0

    .line 8088
    :cond_2
    if-ge v0, p2, :cond_3

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpg-float v4, p3, v4

    if-gtz v4, :cond_3

    .line 8089
    return v0

    .line 8091
    :cond_3
    return p2

    .line 8070
    .end local v1    # "lineHeight":I
    .end local v2    # "slop":I
    .end local v3    # "verticalOffset":F
    :cond_4
    :goto_0
    return v0
.end method

.method public greylist-max-o getCursorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 3129
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getDefaultOnReceiveContentListener()Landroid/widget/TextViewOnReceiveContentListener;
    .locals 1

    .line 744
    iget-object v0, p0, Landroid/widget/Editor;->mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

    return-object v0
.end method

.method public blacklist getFlagCursorDragFromAnywhereEnabled()Z
    .locals 1

    .line 623
    iget-boolean v0, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    return v0
.end method

.method public blacklist getFlagInsertionHandleGesturesEnabled()Z
    .locals 1

    .line 638
    iget-boolean v0, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    return v0
.end method

.method public greylist-max-o getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 2

    .line 3095
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v0, :cond_0

    .line 3096
    const/4 v0, 0x0

    return-object v0

    .line 3099
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v0, :cond_1

    .line 3100
    new-instance v0, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 3102
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3103
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3106
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    return-object v0
.end method

.method greylist-max-o getLastUpPositionX()F
    .locals 1

    .line 1706
    iget-object v0, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->getLastUpX()F

    move-result v0

    return v0
.end method

.method greylist-max-o getLastUpPositionY()F
    .locals 1

    .line 1710
    iget-object v0, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->getLastUpY()F

    move-result v0

    return v0
.end method

.method public greylist-max-o getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .locals 2

    .line 3112
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v0, :cond_0

    .line 3113
    const/4 v0, 0x0

    return-object v0

    .line 3116
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v0, :cond_1

    .line 3117
    new-instance v0, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 3119
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3120
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3123
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    return-object v0
.end method

.method greylist-max-o getTextActionMode()Landroid/view/ActionMode;
    .locals 1

    .line 2680
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method greylist-max-o getTextView()Landroid/widget/TextView;
    .locals 1

    .line 2675
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public greylist-max-o getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .line 1459
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    .line 1460
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1462
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method greylist-max-o hasInsertionController()Z
    .locals 1

    .line 3082
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method greylist-max-o hasSelectionController()Z
    .locals 1

    .line 3089
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method greylist-max-o hideCursorAndSpanControllers()V
    .locals 0

    .line 1139
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1140
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    .line 1141
    return-void
.end method

.method greylist-max-o hideFloatingToolbar(I)V
    .locals 3
    .param p1, "duration"    # I

    .line 2014
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2015
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2016
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 2018
    :cond_0
    return-void
.end method

.method greylist-max-o hideInsertionPointCursorController()V
    .locals 1

    .line 1130
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_0

    .line 1131
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 1133
    :cond_0
    return-void
.end method

.method greylist-max-o invalidateActionModeAsync()V
    .locals 1

    .line 2707
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionModeAsync()V

    .line 2708
    return-void
.end method

.method greylist-max-o invalidateHandlesAndActionMode()V
    .locals 1

    .line 2526
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 2527
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->invalidateHandles()V

    .line 2529
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1

    .line 2530
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->invalidateHandle()V

    .line 2532
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 2533
    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    .line 2535
    :cond_2
    return-void
.end method

.method greylist invalidateTextDisplayList()V
    .locals 3

    .line 2571
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_1

    .line 2572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2573
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2572
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2576
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method greylist-max-o invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 10
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 2541
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_4

    instance-of v0, p1, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_4

    .line 2542
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2543
    .local v0, "firstLine":I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 2545
    .local v1, "lastLine":I
    move-object v2, p1

    check-cast v2, Landroid/text/DynamicLayout;

    .line 2546
    .local v2, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v3

    .line 2547
    .local v3, "blockEndLines":[I
    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v4

    .line 2548
    .local v4, "blockIndices":[I
    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v5

    .line 2550
    .local v5, "numberOfBlocks":I
    const/4 v6, 0x0

    .line 2552
    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 2553
    aget v7, v3, v6

    if-lt v7, v0, :cond_0

    goto :goto_1

    .line 2554
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2558
    :cond_1
    :goto_1
    if-ge v6, v5, :cond_4

    .line 2559
    aget v7, v4, v6

    .line 2560
    .local v7, "blockIndex":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 2561
    iget-object v8, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v8, v8, v7

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2563
    :cond_2
    aget v8, v3, v6

    if-lt v8, v1, :cond_3

    goto :goto_2

    .line 2564
    :cond_3
    nop

    .end local v7    # "blockIndex":I
    add-int/lit8 v6, v6, 0x1

    .line 2565
    goto :goto_1

    .line 2567
    .end local v0    # "firstLine":I
    .end local v1    # "lastLine":I
    .end local v2    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v3    # "blockEndLines":[I
    .end local v4    # "blockIndices":[I
    .end local v5    # "numberOfBlocks":I
    .end local v6    # "i":I
    :cond_4
    :goto_2
    return-void
.end method

.method synthetic blacklist lambda$startActionModeInternal$0$android-widget-Editor()V
    .locals 0

    .line 2823
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    return-void
.end method

.method blacklist loadCursorDrawable()V
    .locals 1

    .line 8123
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 8124
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    .line 8126
    :cond_0
    return-void
.end method

.method blacklist loadHandleDrawables(Z)V
    .locals 1
    .param p1, "overwrite"    # Z

    .line 8883
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 8884
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    .line 8885
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8886
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$InsertionPointCursorController;->-$$Nest$mreloadHandleDrawable(Landroid/widget/Editor$InsertionPointCursorController;)V

    .line 8890
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    .line 8891
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 8892
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 8893
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8894
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$mreloadHandleDrawables(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 8897
    :cond_3
    return-void
.end method

.method greylist-max-o makeBlink()V
    .locals 4

    .line 3234
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 3236
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$Blink-IA;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 3237
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3238
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3240
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_2

    .line 3241
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3244
    :cond_2
    :goto_0
    return-void
.end method

.method blacklist maybeFireScheduledRestartInputForSetText()V
    .locals 2

    .line 2121
    iget-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    if-eqz v0, :cond_1

    .line 2122
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2123
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2124
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->invalidateInput(Landroid/view/View;)V

    .line 2126
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    .line 2128
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method greylist-max-o onAttachedToWindow()V
    .locals 4

    .line 797
    iget-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 798
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 799
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 802
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 803
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 806
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v2, :cond_1

    .line 807
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 809
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v2, :cond_2

    .line 810
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 811
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 814
    :cond_2
    iget-object v2, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 818
    :cond_3
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 821
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 822
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    .line 825
    :cond_4
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v1, v2, v3}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 826
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 827
    return-void
.end method

.method public greylist-max-o onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 3196
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_0

    .line 3197
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    goto :goto_0

    .line 3199
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->-$$Nest$minvalidate(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    .line 3202
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 3203
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 3204
    return-void
.end method

.method greylist-max-o onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .line 3479
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    if-nez v0, :cond_7

    iget v0, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    .line 3480
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3483
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    iget v2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 3484
    .local v0, "offset":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3485
    return-void

    .line 3488
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 3489
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 3490
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3491
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3492
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-gt v0, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 3493
    .local v1, "isOnSelection":Z
    :goto_0
    if-nez v1, :cond_3

    .line 3498
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v0}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 3500
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 3504
    .end local v1    # "isOnSelection":Z
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v1

    const/4 v4, 0x5

    if-eqz v1, :cond_5

    .line 3505
    new-array v1, v4, [Landroid/widget/Editor$SuggestionInfo;

    .line 3507
    .local v1, "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v1

    const/4 v7, 0x0

    if-ge v5, v6, :cond_4

    .line 3508
    new-instance v6, Landroid/widget/Editor$SuggestionInfo;

    invoke-direct {v6, v7}, Landroid/widget/Editor$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionInfo-IA;)V

    aput-object v6, v1, v5

    .line 3507
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3510
    .end local v5    # "i":I
    :cond_4
    const/16 v5, 0x9

    const v6, 0x1040b7e

    invoke-interface {p1, v3, v3, v5, v6}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v5

    .line 3512
    .local v5, "subMenu":Landroid/view/SubMenu;
    iget-object v6, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    invoke-virtual {v6, v1, v7}, Landroid/widget/Editor$SuggestionHelper;->getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I

    move-result v6

    .line 3513
    .local v6, "numItems":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_5

    .line 3514
    aget-object v8, v1, v7

    .line 3515
    .local v8, "info":Landroid/widget/Editor$SuggestionInfo;
    iget-object v9, v8, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v5, v3, v3, v7, v9}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    new-instance v10, Landroid/widget/Editor$4;

    invoke-direct {v10, p0, v8}, Landroid/widget/Editor$4;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    .line 3516
    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3513
    .end local v8    # "info":Landroid/widget/Editor$SuggestionInfo;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3526
    .end local v1    # "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    .end local v5    # "subMenu":Landroid/view/SubMenu;
    .end local v6    # "numItems":I
    .end local v7    # "i":I
    :cond_5
    const v1, 0x1020032

    const/4 v5, 0x6

    const v6, 0x1040e3c

    invoke-interface {p1, v3, v1, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v5, 0x7a

    .line 3528
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3529
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3530
    invoke-virtual {v5}, Landroid/widget/TextView;->canUndo()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3531
    const v1, 0x1020033

    const/4 v5, 0x7

    const v6, 0x1040b6a

    invoke-interface {p1, v3, v1, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3533
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3534
    invoke-virtual {v5}, Landroid/widget/TextView;->canRedo()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3536
    const v1, 0x1020020

    const/4 v5, 0x2

    const v6, 0x1040003

    invoke-interface {p1, v3, v1, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v5, 0x78

    .line 3538
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3539
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3540
    invoke-virtual {v5}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3541
    const v1, 0x1020021

    const/4 v5, 0x3

    const v6, 0x1040001

    invoke-interface {p1, v3, v1, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v5, 0x63

    .line 3543
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3544
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3545
    invoke-virtual {v5}, Landroid/widget/TextView;->canCopy()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3546
    const v1, 0x1020022

    const/4 v5, 0x4

    const v6, 0x104000b

    invoke-interface {p1, v3, v1, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v5, 0x76

    .line 3548
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3549
    invoke-virtual {v5}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v5, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3550
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3551
    const v1, 0x1020031

    const v5, 0x1040019

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3553
    invoke-virtual {v4}, Landroid/widget/TextView;->canPasteAsPlainText()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3554
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3555
    const v1, 0x1020035

    const/16 v4, 0xc

    const v5, 0x1040d45

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3557
    invoke-virtual {v4}, Landroid/widget/TextView;->canShare()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3558
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3559
    const v1, 0x102001f

    const/16 v4, 0x8

    const v5, 0x104000d

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v4, 0x61

    .line 3561
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3562
    invoke-virtual {v4}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3563
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3564
    const v1, 0x1020043

    const/16 v4, 0xa

    const v5, 0x104001a

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3566
    invoke-virtual {v4}, Landroid/widget/TextView;->canRequestAutofill()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3567
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3569
    const v1, 0x10202c0

    const/16 v4, 0xd

    const v5, 0x104044b

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v4, p0, Landroid/widget/Editor;->mIsThemeDeviceDefault:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3571
    invoke-virtual {v4}, Landroid/widget/TextView;->canDictionary()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_3
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3572
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3574
    const v1, 0x1020261

    const/16 v4, 0xb

    const v5, 0x1040e30

    invoke-interface {p1, v3, v1, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3576
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3577
    invoke-virtual {v3}, Landroid/widget/TextView;->canClipboardForContextMenu()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3581
    iput-boolean v2, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 3582
    return-void

    .line 3481
    .end local v0    # "offset":I
    :cond_7
    :goto_4
    return-void
.end method

.method greylist-max-o onDetachedFromWindow()V
    .locals 2

    .line 830
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 832
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 833
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 836
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 838
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1

    .line 839
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 842
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_2

    .line 843
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 846
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 847
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 851
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 852
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 855
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 857
    invoke-direct {p0}, Landroid/widget/Editor;->discardTextDisplayLists()V

    .line 859
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_5

    .line 860
    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 863
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 867
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 868
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 869
    iget-object v1, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 873
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 874
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 876
    iget-object v0, p0, Landroid/widget/Editor;->mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

    invoke-virtual {v0}, Landroid/widget/TextViewOnReceiveContentListener;->clearInputConnectionInfo()V

    .line 877
    invoke-direct {p0}, Landroid/widget/Editor;->unregisterOnBackInvokedCallback()V

    .line 878
    return-void
.end method

.method greylist-max-o onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .line 2286
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 2287
    .local v0, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 2289
    .local v1, "selectionEnd":I
    iget-object v2, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2290
    .local v2, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v2, :cond_1

    iget v3, v2, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v3, :cond_1

    .line 2291
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 2292
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_1

    .line 2293
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2294
    iget-boolean v4, v2, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v4, :cond_0

    iget-boolean v4, v2, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v4, :cond_1

    .line 2298
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 2304
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v3, :cond_2

    .line 2305
    invoke-virtual {v3, p1, p5}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 2308
    :cond_2
    if-eqz p3, :cond_4

    if-ne v0, v1, :cond_4

    iget-object v3, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 2310
    const/4 v3, 0x0

    .line 2311
    .local v3, "cursorOffsetHorizontal":I
    if-nez v0, :cond_3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isHighContrastTextEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2312
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getHCTStrokeWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 2313
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    if-nez v4, :cond_3

    .line 2314
    mul-int/lit8 v3, v3, -0x1

    .line 2317
    :cond_3
    invoke-direct {p0, p1, v3, p5}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;II)V

    .line 2320
    const/4 p3, 0x0

    .line 2323
    .end local v3    # "cursorOffsetHorizontal":I
    :cond_4
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    if-eqz v3, :cond_5

    .line 2324
    invoke-virtual {v3, p1}, Landroid/widget/SelectionActionModeHelper;->onDraw(Landroid/graphics/Canvas;)V

    .line 2325
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    invoke-virtual {v3}, Landroid/widget/SelectionActionModeHelper;->isDrawingHighlight()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2326
    const/4 p3, 0x0

    .line 2330
    :cond_5
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2331
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0

    .line 2334
    :cond_6
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 2336
    :goto_0
    return-void
.end method

.method greylist-max-o onDrop(Landroid/view/DragEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 3394
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 3395
    .local v0, "offset":I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    .line 3396
    .local v1, "localState":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 3397
    .local v2, "dragLocalState":Landroid/widget/Editor$DragLocalState;
    instance-of v3, v1, Landroid/widget/Editor$DragLocalState;

    if-eqz v3, :cond_0

    .line 3398
    move-object v2, v1

    check-cast v2, Landroid/widget/Editor$DragLocalState;

    .line 3400
    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 3402
    .local v3, "dragDropIntoItself":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 3403
    iget v4, v2, Landroid/widget/Editor$DragLocalState;->start:I

    if-lt v0, v4, :cond_2

    iget v4, v2, Landroid/widget/Editor$DragLocalState;->end:I

    if-ge v0, v4, :cond_2

    .line 3405
    return-void

    .line 3409
    :cond_2
    invoke-static {p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v4

    .line 3410
    .local v4, "permissions":Landroid/view/DragAndDropPermissions;
    if-eqz v4, :cond_3

    .line 3411
    invoke-virtual {v4}, Landroid/view/DragAndDropPermissions;->takeTransient()Z

    .line 3413
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 3414
    iget-object v5, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v5}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 3416
    :try_start_0
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 3419
    .local v5, "originalLength":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v0}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 3421
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    .line 3422
    .local v6, "clip":Landroid/content/ClipData;
    new-instance v7, Landroid/view/ContentInfo$Builder;

    const/4 v8, 0x3

    invoke-direct {v7, v6, v8}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 3423
    invoke-virtual {v7, v4}, Landroid/view/ContentInfo$Builder;->setDragAndDropPermissions(Landroid/view/DragAndDropPermissions;)Landroid/view/ContentInfo$Builder;

    move-result-object v7

    .line 3424
    invoke-virtual {v7}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v7

    .line 3425
    .local v7, "payload":Landroid/view/ContentInfo;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    .line 3426
    if-eqz v3, :cond_4

    .line 3427
    invoke-direct {p0, v2, v0, v5}, Landroid/widget/Editor;->deleteSourceAfterLocalDrop(Landroid/widget/Editor$DragLocalState;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3430
    .end local v5    # "originalLength":I
    .end local v6    # "clip":Landroid/content/ClipData;
    .end local v7    # "payload":Landroid/view/ContentInfo;
    :cond_4
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->endBatchEdit()V

    .line 3431
    iget-object v5, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v5}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 3432
    nop

    .line 3433
    return-void

    .line 3430
    :catchall_0
    move-exception v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->endBatchEdit()V

    .line 3431
    iget-object v6, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v6}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 3432
    throw v5
.end method

.method greylist-max-o onFocusChanged(ZI)V
    .locals 9
    .param p1, "focused"    # Z
    .param p2, "direction"    # I

    .line 1725
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 1726
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1728
    if-eqz p1, :cond_a

    .line 1729
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1730
    .local v0, "selStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1734
    .local v1, "selEnd":I
    iget-boolean v2, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1735
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1737
    .local v2, "isFocusHighlighted":Z
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

    .line 1740
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_2

    if-ltz v0, :cond_2

    if-gez v1, :cond_8

    .line 1743
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v5

    .line 1744
    .local v5, "lastTapPosition":I
    if-ltz v5, :cond_3

    .line 1750
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v5}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 1755
    :cond_3
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v6

    .line 1756
    .local v6, "mMovement":Landroid/text/method/MovementMethod;
    if-eqz v6, :cond_4

    .line 1757
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    invoke-interface {v6, v7, v8, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 1765
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

    .line 1778
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v0, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 1782
    :cond_6
    iget-boolean v7, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v7, :cond_7

    .line 1783
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->selectAllText()Z

    .line 1786
    :cond_7
    iput-boolean v3, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1789
    .end local v5    # "lastTapPosition":I
    .end local v6    # "mMovement":Landroid/text/method/MovementMethod;
    :cond_8
    iput-boolean v4, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 1790
    iput-boolean v4, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 1792
    iget-object v3, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    .line 1793
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 1796
    :cond_9
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1797
    .end local v0    # "selStart":I
    .end local v1    # "selEnd":I
    .end local v2    # "isFocusHighlighted":Z
    goto :goto_4

    .line 1798
    :cond_a
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    .line 1799
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 1802
    :cond_b
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1804
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1805
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1806
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    goto :goto_3

    .line 1808
    :cond_c
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1809
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1810
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    goto :goto_2

    .line 1812
    :cond_d
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1814
    :goto_2
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    .line 1817
    :goto_3
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_e

    .line 1818
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1821
    :cond_e
    invoke-direct {p0}, Landroid/widget/Editor;->ensureNoSelectionIfNonSelectable()V

    .line 1823
    :goto_4
    return-void
.end method

.method blacklist onInitializeSmartActionsAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9884
    iget-object v0, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$AccessibilitySmartActions;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9885
    return-void
.end method

.method greylist-max-o onLocaleChanged()V
    .locals 1

    .line 1454
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1455
    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 1456
    return-void
.end method

.method greylist-max-o onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .line 1188
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1192
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mhadWindowFocus:Z

    if-eqz v0, :cond_0

    .line 1193
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mhadWindowFocus:Z

    .line 1194
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    goto :goto_0

    .line 1198
    :pswitch_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasWindowFocus()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Editor;->mhadWindowFocus:Z

    .line 1199
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 1202
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

    .line 3207
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_0

    .line 3208
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    .line 3210
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 3211
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 3213
    :cond_1
    return-void
.end method

.method final blacklist onTextOperationUserChanged()V
    .locals 1

    .line 3056
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_0

    .line 3057
    invoke-virtual {v0}, Landroid/widget/SpellChecker;->resetSession()V

    .line 3059
    :cond_0
    return-void
.end method

.method public greylist-max-o onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1946
    invoke-direct {p0, p1}, Landroid/widget/Editor;->shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1947
    .local v0, "filterOutEvent":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastButtonState:I

    .line 1948
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1949
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1950
    iput-boolean v1, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 1952
    :cond_0
    return-void

    .line 1954
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 1955
    .local v2, "viewConfiguration":Landroid/view/ViewConfiguration;
    iget-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v3, p1, v2}, Landroid/widget/EditorTouchState;->update(Landroid/view/MotionEvent;Landroid/view/ViewConfiguration;)V

    .line 1956
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 1958
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1959
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/Editor$InsertionPointCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1961
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1962
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1965
    :cond_3
    iget-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    .line 1966
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1967
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1971
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v1, :cond_5

    .line 1972
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_5

    .line 1973
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_6

    .line 1974
    :cond_5
    iput-boolean v4, p0, Landroid/widget/Editor;->mIsSelectedByLongClick:Z

    .line 1975
    iput-boolean v4, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    .line 1976
    invoke-direct {p0}, Landroid/widget/Editor;->dismissMagnifierForDrag()V

    .line 1980
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_8

    .line 1983
    iput-boolean v4, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1984
    iput-boolean v4, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 1988
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

    .line 1990
    invoke-direct {p0}, Landroid/widget/Editor;->softInputShown()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/Editor;->mWasSIPShowing:Z

    .line 1994
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v3, 0xd3

    if-ne v1, v3, :cond_a

    .line 1995
    :cond_9
    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/Editor;->setUseCtxMenuInDesktopMode(Z)V

    .line 1998
    :cond_a
    return-void
.end method

.method greylist-max-o onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2943
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    .line 2944
    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 2943
    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper;->resetSelection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2945
    return-void

    .line 2948
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

    .line 2951
    .local v0, "selectAllGotFocus":Z
    :goto_0
    const/4 v3, 0x0

    .line 2952
    .local v3, "insertionHandleActived":Z
    const/4 v4, -0x1

    .line 2953
    .local v4, "beforeCursorOffset":I
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

    .line 2954
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 2955
    :cond_3
    const/4 v3, 0x1

    .line 2956
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 2960
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 2961
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2962
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 2964
    .local v5, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_10

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ltz v6, :cond_10

    .line 2966
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v6

    .line 2968
    .local v6, "offset":I
    iget-boolean v7, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    xor-int/2addr v7, v2

    .line 2969
    .local v7, "shouldInsertCursor":Z
    if-eqz v7, :cond_5

    .line 2972
    move-object v8, v5

    check-cast v8, Landroid/text/Spannable;

    invoke-static {v8, v6}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 2974
    iget-object v8, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v8, :cond_5

    .line 2976
    invoke-virtual {v8}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 2980
    :cond_5
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v8

    if-nez v8, :cond_10

    .line 2981
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2983
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 2984
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2989
    :cond_6
    const/4 v1, 0x0

    .line 2990
    .local v1, "isHBDGrammarly":Z
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 2991
    .local v2, "spannable":Landroid/text/Spannable;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2992
    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    const-class v10, Landroid/text/style/SuggestionSpan;

    .line 2991
    invoke-interface {v2, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/SuggestionSpan;

    .line 2993
    .local v8, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v10, v8

    if-ge v9, v10, :cond_8

    .line 2994
    aget-object v10, v8, v9

    invoke-virtual {v10}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v10

    and-int/lit16 v10, v10, 0x3000

    if-eqz v10, :cond_7

    .line 2996
    const/4 v1, 0x1

    .line 2997
    goto :goto_2

    .line 2993
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3001
    .end local v9    # "i":I
    :cond_8
    :goto_2
    if-nez v1, :cond_9

    .line 3002
    new-instance v9, Landroid/widget/Editor$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Landroid/widget/Editor$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Editor;)V

    iput-object v9, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 3007
    :cond_9
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v10, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 3008
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    int-to-long v11, v11

    .line 3007
    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v1    # "isHBDGrammarly":Z
    .end local v2    # "spannable":Landroid/text/Spannable;
    .end local v8    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    goto/16 :goto_4

    .line 3009
    :cond_a
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 3010
    if-eqz v7, :cond_f

    .line 3012
    iget-boolean v8, p0, Landroid/widget/Editor;->mShowSoftInputOnFocusInternal:Z

    if-nez v8, :cond_b

    invoke-direct {p0}, Landroid/widget/Editor;->softInputShown()Z

    move-result v8

    iput-boolean v8, p0, Landroid/widget/Editor;->mShowSoftInputOnFocusInternal:Z

    .line 3014
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

    .line 3017
    iget-boolean v1, p0, Landroid/widget/Editor;->mWasBlinking:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    iget-boolean v2, p0, Landroid/widget/Editor;->mWasSIPShowing:Z

    if-ne v1, v2, :cond_10

    .line 3018
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    .line 3019
    .local v1, "mInsertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v2

    if-nez v2, :cond_c

    .line 3020
    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 3021
    invoke-virtual {p0}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 3023
    .end local v1    # "mInsertionController":Landroid/widget/Editor$InsertionPointCursorController;
    :cond_c
    goto :goto_4

    .line 3026
    :cond_d
    if-eqz v3, :cond_e

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    if-ne v4, v8, :cond_e

    iget-boolean v8, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    if-nez v8, :cond_e

    .line 3028
    invoke-virtual {p0}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 3030
    iput-boolean v2, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    goto :goto_3

    .line 3034
    :cond_e
    iput-boolean v1, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    .line 3039
    :goto_3
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_4

    .line 3043
    :cond_f
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    nop

    .line 3048
    .end local v6    # "offset":I
    .end local v7    # "shouldInsertCursor":Z
    :cond_10
    :goto_4
    return-void
.end method

.method greylist-max-o onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .line 1893
    if-eqz p1, :cond_1

    .line 1894
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 1895
    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 1896
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1898
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1899
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    goto :goto_0

    .line 1902
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_2

    .line 1903
    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 1905
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_3

    .line 1906
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 1909
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1910
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 1911
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_4

    .line 1912
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 1916
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1918
    invoke-direct {p0}, Landroid/widget/Editor;->ensureNoSelectionIfNonSelectable()V

    .line 1920
    :cond_5
    :goto_0
    return-void
.end method

.method public greylist-max-o performLongClick(Z)Z
    .locals 6
    .param p1, "handled"    # Z

    .line 1620
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsBeingLongClickedByAccessibility:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1621
    if-nez p1, :cond_0

    .line 1622
    invoke-direct {p0}, Landroid/widget/Editor;->toggleInsertionActionMode()V

    .line 1624
    :cond_0
    return v1

    .line 1627
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

    .line 1628
    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->isOnHandle()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v3, :cond_3

    .line 1629
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v4}, Landroid/widget/EditorTouchState;->getLastDownX()F

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    .line 1630
    invoke-virtual {v5}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v5

    .line 1629
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    .line 1632
    .local v3, "offset":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getKeycodeDpadCenterStatus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1633
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 1634
    iput-boolean v1, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    .line 1635
    invoke-virtual {p0}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 1640
    :cond_2
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v3}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 1642
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 1643
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 1644
    const/4 p1, 0x1

    .line 1645
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1646
    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1645
    invoke-static {v4, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1651
    .end local v3    # "offset":I
    :cond_3
    if-nez p1, :cond_6

    iget-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_6

    .line 1652
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1653
    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    .line 1654
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1655
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    .line 1654
    invoke-static {v3, v2, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0

    .line 1659
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1660
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    .line 1662
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1663
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    .line 1666
    :cond_5
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1667
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1666
    invoke-static {v3, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1671
    :goto_0
    const/4 p1, 0x1

    .line 1675
    :cond_6
    if-nez p1, :cond_9

    .line 1676
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result p1

    .line 1678
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1679
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1680
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowMagnifier:Z

    goto :goto_1

    .line 1682
    :cond_7
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getKeycodeDpadCenterStatus()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1683
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    .line 1686
    :cond_8
    :goto_1
    if-eqz p1, :cond_9

    .line 1687
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1688
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1687
    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1694
    :cond_9
    return p1
.end method

.method blacklist performSmartActionsAccessibilityAction(I)Z
    .locals 1
    .param p1, "actionId"    # I

    .line 9892
    iget-object v0, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$AccessibilitySmartActions;->performAccessibilityAction(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o prepareCursorControllers()V
    .locals 7

    .line 1095
    const/4 v0, 0x0

    .line 1097
    .local v0, "windowSupportsHandles":Z
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1098
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 1099
    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1100
    .local v2, "windowParams":Landroid/view/WindowManager$LayoutParams;
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

    .line 1104
    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
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

    .line 1105
    .local v2, "enabled":Z
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

    .line 1106
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

    .line 1108
    iget-boolean v3, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    const/4 v5, 0x0

    if-nez v3, :cond_7

    .line 1109
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 1110
    iget-object v3, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v3, :cond_7

    .line 1111
    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 1112
    iput-object v5, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 1116
    :cond_7
    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v3, :cond_8

    .line 1117
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1118
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v3, :cond_8

    .line 1119
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 1120
    iput-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 1125
    :cond_8
    iput-boolean v4, p0, Landroid/widget/Editor;->mToggleActionMode:Z

    .line 1127
    return-void
.end method

.method greylist-max-o redo()V
    .locals 4

    .line 775
    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_0

    .line 776
    return-void

    .line 778
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v1, v2

    .line 779
    .local v1, "owners":[Landroid/content/UndoOwner;
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/UndoManager;->redo([Landroid/content/UndoOwner;I)I

    .line 780
    return-void
.end method

.method greylist-max-o refreshTextActionMode()V
    .locals 5

    .line 2599
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2600
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2601
    return-void

    .line 2603
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    .line 2604
    .local v0, "hasSelection":Z
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 2605
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    .line 2606
    .local v3, "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isCursorBeingModified()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    .line 2607
    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isCursorBeingModified()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2609
    :cond_2
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2610
    return-void

    .line 2612
    :cond_3
    if-eqz v0, :cond_7

    .line 2613
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 2614
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_4

    .line 2615
    iget-boolean v4, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    if-eqz v4, :cond_a

    .line 2618
    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    goto :goto_2

    .line 2620
    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 2625
    :cond_5
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_2

    .line 2622
    :cond_6
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 2623
    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    goto :goto_2

    .line 2630
    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    .line 2632
    :cond_8
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_a

    .line 2633
    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_2

    .line 2631
    :cond_9
    :goto_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2636
    :cond_a
    :goto_2
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2637
    return-void
.end method

.method greylist-max-o replace()V
    .locals 2

    .line 783
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 786
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 787
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    .line 789
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 792
    .local v0, "middle":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 794
    return-void
.end method

.method greylist-max-o reportExtractedText()Z
    .locals 11

    .line 2215
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2216
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2217
    return v1

    .line 2219
    :cond_0
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2220
    .local v2, "wasContentChanged":Z
    if-nez v2, :cond_1

    iget-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-nez v3, :cond_1

    .line 2221
    return v1

    .line 2223
    :cond_1
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2224
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 2225
    iget-object v3, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 2226
    .local v3, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    if-nez v3, :cond_2

    .line 2227
    return v1

    .line 2229
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v10

    .line 2230
    .local v10, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v10, :cond_3

    .line 2231
    return v1

    .line 2239
    :cond_3
    iget v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v4, :cond_4

    if-nez v2, :cond_4

    .line 2240
    const/4 v4, -0x2

    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2242
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

    .line 2252
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v5, v3, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v10, v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 2253
    const/4 v4, -0x1

    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2254
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 2255
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 2256
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2257
    const/4 v1, 0x1

    return v1

    .line 2259
    :cond_5
    return v1
.end method

.method greylist-max-o restoreInstanceState(Landroid/os/ParcelableParcel;)V
    .locals 3
    .param p1, "state"    # Landroid/os/ParcelableParcel;

    .line 725
    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 726
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 727
    iget-object v1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v1, v0}, Landroid/widget/Editor$UndoInputFilter;->restoreInstanceState(Landroid/os/Parcel;)V

    .line 729
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string v2, "Editor"

    invoke-virtual {v1, v2, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 730
    return-void
.end method

.method greylist-max-o saveInstanceState()Landroid/os/ParcelableParcel;
    .locals 3

    .line 717
    new-instance v0, Landroid/os/ParcelableParcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelableParcel;-><init>(Ljava/lang/ClassLoader;)V

    .line 718
    .local v0, "state":Landroid/os/ParcelableParcel;
    invoke-virtual {v0}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v1

    .line 719
    .local v1, "parcel":Landroid/os/Parcel;
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->saveInstanceState(Landroid/os/Parcel;)V

    .line 720
    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v2, v1}, Landroid/widget/Editor$UndoInputFilter;->saveInstanceState(Landroid/os/Parcel;)V

    .line 721
    return-object v0
.end method

.method blacklist scheduleRestartInputForSetText()V
    .locals 1

    .line 2112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    .line 2113
    return-void
.end method

.method greylist-max-o selectCurrentWord()Z
    .locals 12

    .line 1335
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1336
    return v1

    .line 1339
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1340
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0

    .line 1343
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    .line 1345
    .local v2, "lastTouchOffsets":J
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    .line 1346
    .local v0, "minOffset":I
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v4

    .line 1348
    .local v4, "maxOffset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getKeycodeDpadCenterStatus()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1349
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    move v4, v5

    move v0, v5

    .line 1354
    :cond_2
    if-ltz v0, :cond_a

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v0, v5, :cond_3

    goto/16 :goto_3

    .line 1355
    :cond_3
    if-ltz v4, :cond_9

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v4, v5, :cond_4

    goto :goto_2

    .line 1360
    :cond_4
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1361
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spanned;

    const-class v6, Landroid/text/style/URLSpan;

    invoke-interface {v5, v0, v4, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/URLSpan;

    .line 1362
    .local v5, "urlSpans":[Landroid/text/style/URLSpan;
    array-length v6, v5

    const/4 v7, 0x1

    if-lt v6, v7, :cond_5

    .line 1363
    aget-object v6, v5, v1

    .line 1364
    .local v6, "urlSpan":Landroid/text/style/URLSpan;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v8, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 1365
    .local v8, "selectionStart":I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spanned;

    invoke-interface {v9, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 1366
    .local v6, "selectionEnd":I
    goto :goto_1

    .line 1369
    .end local v6    # "selectionEnd":I
    .end local v8    # "selectionStart":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v6

    .line 1370
    .local v6, "wordIterator":Landroid/text/method/WordIterator;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8, v0, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 1372
    invoke-virtual {v6, v0}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v8

    .line 1373
    .restart local v8    # "selectionStart":I
    invoke-virtual {v6, v4}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v9

    .line 1375
    .local v9, "selectionEnd":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_7

    if-eq v9, v10, :cond_7

    if-ne v8, v9, :cond_6

    goto :goto_0

    :cond_6
    move v6, v9

    goto :goto_1

    .line 1378
    :cond_7
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/Editor;->getCharClusterRange(I)J

    move-result-wide v10

    .line 1379
    .local v10, "range":J
    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v8

    .line 1380
    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v9

    move v6, v9

    .line 1386
    .end local v9    # "selectionEnd":I
    .end local v10    # "range":J
    .local v6, "selectionEnd":I
    :goto_1
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, v8, v6}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 1388
    if-le v6, v8, :cond_8

    move v1, v7

    :cond_8
    return v1

    .line 1355
    .end local v5    # "urlSpans":[Landroid/text/style/URLSpan;
    .end local v6    # "selectionEnd":I
    .end local v8    # "selectionStart":I
    :cond_9
    :goto_2
    return v1

    .line 1354
    :cond_a
    :goto_3
    return v1
.end method

.method greylist-max-o sendOnTextChanged(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "before"    # I
    .param p3, "after"    # I

    .line 1859
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Landroid/widget/SelectionActionModeHelper;->onTextChanged(II)V

    .line 1860
    add-int v0, p1, p3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 1863
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1868
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1870
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 1871
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1873
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1874
    return-void
.end method

.method greylist-max-o setContextMenuAnchor(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3474
    iput p1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    .line 3475
    iput p2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    .line 3476
    return-void
.end method

.method public blacklist setCursorDragMinAngleFromVertical(I)V
    .locals 1
    .param p1, "degreesFromVertical"    # I

    .line 633
    invoke-static {p1}, Landroid/widget/EditorTouchState;->getXYRatio(I)F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mCursorDragDirectionMinXYRatio:F

    .line 634
    return-void
.end method

.method public greylist-max-o setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 954
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 955
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 957
    if-nez v0, :cond_2

    .line 958
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 959
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v1, :cond_1

    .line 960
    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 961
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 964
    :cond_0
    iput-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 966
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    goto :goto_0

    .line 968
    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 969
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 970
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 973
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist setFlagCursorDragFromAnywhereEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 628
    iput-boolean p1, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    .line 629
    return-void
.end method

.method public blacklist setFlagInsertionHandleGesturesEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 643
    iput-boolean p1, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    .line 644
    return-void
.end method

.method greylist-max-o setFrame()V
    .locals 9

    .line 1265
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 1266
    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1267
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 1268
    iget-object v3, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v6

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 1269
    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v7

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v8

    .line 1268
    invoke-virtual/range {v3 .. v8}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 1271
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public blacklist setLineChangeSlopMinMaxForTesting(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 8060
    iput p1, p0, Landroid/widget/Editor;->mLineChangeSlopMin:I

    .line 8061
    iput p2, p0, Landroid/widget/Editor;->mLineChangeSlopMax:I

    .line 8062
    return-void
.end method

.method greylist-max-o setRestartActionModeOnNextRefresh(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 2684
    iput-boolean p1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2685
    return-void
.end method

.method public blacklist setUseCtxMenuInDesktopMode(Z)V
    .locals 5
    .param p1, "isMouse"    # Z

    .line 9988
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9989
    iput-boolean p1, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    .line 9990
    return-void

    .line 9992
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v0, :cond_1

    .line 9993
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Landroid/widget/Editor;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 9996
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_5

    .line 9997
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 9998
    .local v0, "desktopModeState":Lcom/samsung/android/desktopmode/SemDesktopModeState;
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

    .line 10000
    .local v3, "isStandAlone":Z
    :goto_0
    if-nez p1, :cond_4

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    iput-boolean v1, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    .line 10001
    .end local v0    # "desktopModeState":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .end local v3    # "isStandAlone":Z
    goto :goto_2

    .line 10002
    :cond_5
    iput-boolean p1, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    .line 10004
    :goto_2
    return-void
.end method

.method greylist-max-o shouldOfferToShowSuggestions()Z
    .locals 17

    .line 2854
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2855
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 2857
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/text/Spannable;

    .line 2858
    .local v2, "spannable":Landroid/text/Spannable;
    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 2859
    .local v4, "selectionStart":I
    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 2860
    .local v5, "selectionEnd":I
    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/SuggestionSpan;

    .line 2862
    .local v6, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v7, v6

    if-nez v7, :cond_1

    .line 2863
    return v3

    .line 2865
    :cond_1
    const/4 v7, 0x1

    if-ne v4, v5, :cond_5

    .line 2867
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v6

    if-ge v8, v9, :cond_4

    .line 2869
    aget-object v9, v6, v8

    invoke-virtual {v9}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, 0x3000

    if-eqz v9, :cond_2

    .line 2871
    return v3

    .line 2874
    :cond_2
    aget-object v9, v6, v8

    invoke-virtual {v9}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_3

    .line 2875
    return v7

    .line 2867
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2878
    .end local v8    # "i":I
    :cond_4
    return v3

    .line 2880
    :cond_5
    iget-object v8, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 2881
    .local v8, "minSpanStart":I
    const/4 v9, 0x0

    .line 2882
    .local v9, "maxSpanEnd":I
    iget-object v10, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 2883
    .local v10, "unionOfSpansCoveringSelectionStartStart":I
    const/4 v11, 0x0

    .line 2884
    .local v11, "unionOfSpansCoveringSelectionStartEnd":I
    const/4 v12, 0x0

    .line 2885
    .local v12, "hasValidSuggestions":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v14, v6

    if-ge v13, v14, :cond_b

    .line 2887
    aget-object v14, v6, v13

    invoke-virtual {v14}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v14

    and-int/lit16 v14, v14, 0x3000

    if-eqz v14, :cond_6

    .line 2889
    return v3

    .line 2892
    :cond_6
    aget-object v14, v6, v13

    invoke-interface {v2, v14}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 2893
    .local v14, "spanStart":I
    aget-object v15, v6, v13

    invoke-interface {v2, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    .line 2894
    .local v15, "spanEnd":I
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2895
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2896
    if-lt v4, v14, :cond_a

    if-le v4, v15, :cond_7

    .line 2898
    goto :goto_4

    .line 2900
    :cond_7
    if-nez v12, :cond_9

    aget-object v16, v6, v13

    .line 2901
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

    .line 2902
    .end local v12    # "hasValidSuggestions":Z
    .local v7, "hasValidSuggestions":Z
    :goto_3
    nop

    .line 2903
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2904
    nop

    .line 2905
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v12, v7

    .line 2885
    .end local v7    # "hasValidSuggestions":Z
    .end local v14    # "spanStart":I
    .end local v15    # "spanEnd":I
    .restart local v12    # "hasValidSuggestions":Z
    :cond_a
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x1

    goto :goto_1

    .line 2907
    .end local v13    # "i":I
    :cond_b
    if-nez v12, :cond_c

    .line 2908
    return v3

    .line 2910
    :cond_c
    if-lt v10, v11, :cond_d

    .line 2912
    return v3

    .line 2914
    :cond_d
    if-lt v8, v10, :cond_f

    if-le v9, v11, :cond_e

    goto :goto_5

    .line 2920
    :cond_e
    const/4 v3, 0x1

    return v3

    .line 2918
    :cond_f
    :goto_5
    return v3
.end method

.method greylist-max-o shouldRenderCursor()Z
    .locals 9

    .line 1083
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorMoving:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1087
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1088
    return v2

    .line 1090
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v3, v5

    .line 1091
    .local v3, "showCursorDelta":J
    const-wide/16 v5, 0x3e8

    rem-long v5, v3, v5

    const-wide/16 v7, 0x1f4

    cmp-long v0, v5, v7

    if-gez v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 1085
    .end local v3    # "showCursorDelta":J
    :cond_3
    :goto_0
    return v1
.end method

.method greylist-max-o startActionModeInternal(I)Z
    .locals 6
    .param p1, "actionMode"    # I

    .line 2780
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 2781
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 2784
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2785
    return v1

    .line 2787
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 2789
    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    .line 2790
    return v1

    .line 2793
    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    .line 2794
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2795
    :cond_3
    return v1

    .line 2803
    :cond_4
    iget-boolean v2, p0, Landroid/widget/Editor;->mUseCtxMenuInDesktopMode:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    invoke-direct {p0}, Landroid/widget/Editor;->isUniversalSwitchEnable()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2804
    new-instance v2, Landroid/widget/Editor$TextActionModeCallback;

    invoke-direct {v2, p0, p1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;I)V

    .line 2805
    .local v2, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v3}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2806
    invoke-direct {p0}, Landroid/widget/Editor;->registerOnBackInvokedCallback()V

    .line 2808
    sget-boolean v4, Lcom/samsung/android/rune/ViewRune;->SUPPORT_DIRECT_WRITING:Z

    if-eqz v4, :cond_6

    .line 2809
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->onEditTextActionModeStarted()V

    .line 2812
    .end local v2    # "actionModeCallback":Landroid/view/ActionMode$Callback;
    :cond_6
    goto :goto_0

    .line 2813
    :cond_7
    const-string v2, "Editor"

    const-string v4, "Action mode didn\'t start because Universal Switch / Desktop mode was enabled"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
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

    .line 2818
    .local v2, "selectableText":Z
    :goto_2
    if-ne p1, v0, :cond_a

    if-nez v2, :cond_a

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    instance-of v4, v0, Lcom/android/internal/view/FloatingActionMode;

    if-eqz v4, :cond_a

    .line 2822
    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    new-instance v4, Landroid/widget/Editor$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroid/widget/Editor$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Editor;)V

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/view/FloatingActionMode;->setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)V

    .line 2826
    :cond_a
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    move v3, v1

    :goto_3
    move v0, v3

    .line 2827
    .local v0, "selectionStarted":Z
    if-eqz v0, :cond_c

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2828
    invoke-virtual {v3}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v3

    if-nez v3, :cond_c

    iget-boolean v3, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v3, :cond_c

    .line 2831
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 2833
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_c

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getDWSelectionFlag()Z

    move-result v4

    if-nez v4, :cond_c

    .line 2834
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 2837
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_c
    return v0
.end method

.method greylist-max-o startInsertionActionMode()V
    .locals 3

    .line 2643
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2644
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2646
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2647
    return-void

    .line 2649
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2652
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

    .line 2653
    :cond_3
    const-string v0, "Editor"

    const-string v1, "Action mode didn\'t start because Universal Switch / Desktop mode was enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    return-void

    .line 2658
    :cond_4
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;I)V

    .line 2660
    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2662
    invoke-direct {p0}, Landroid/widget/Editor;->registerOnBackInvokedCallback()V

    .line 2663
    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2664
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 2666
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->SUPPORT_DIRECT_WRITING:Z

    if-eqz v1, :cond_5

    .line 2667
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->onEditTextActionModeStarted()V

    .line 2671
    :cond_5
    return-void
.end method

.method greylist-max-o startLinkActionModeAsync(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2695
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 2696
    return-void

    .line 2698
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2699
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    .line 2700
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/SelectionActionModeHelper;->startLinkActionModeAsync(II)V

    .line 2701
    return-void
.end method

.method greylist-max-o startSelectionActionModeAsync(Z)V
    .locals 1
    .param p1, "adjustSelection"    # Z

    .line 2691
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SelectionActionModeHelper;->startSelectionActionModeAsync(Z)V

    .line 2692
    return-void
.end method

.method protected greylist-max-o stopTextActionMode()V
    .locals 1

    .line 3062
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3064
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 3066
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->unregisterOnBackInvokedCallback()V

    .line 3067
    return-void
.end method

.method protected blacklist stopTextActionModeFromIME()V
    .locals 1

    .line 10020
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 10021
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 10023
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1

    .line 10024
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 10026
    :cond_1
    return-void
.end method

.method greylist-max-o undo()V
    .locals 4

    .line 767
    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_0

    .line 768
    return-void

    .line 770
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v1, v2

    .line 771
    .local v1, "owners":[Landroid/content/UndoOwner;
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/UndoManager;->undo([Landroid/content/UndoOwner;I)I

    .line 772
    return-void
.end method

.method greylist-max-o updateCursorPosition()V
    .locals 7

    .line 2579
    invoke-virtual {p0}, Landroid/widget/Editor;->loadCursorDrawable()V

    .line 2580
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2581
    return-void

    .line 2587
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;

    move-result-object v0

    .line 2589
    .local v0, "layout":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 2590
    .local v1, "offset":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 2591
    .local v2, "line":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 2592
    .local v3, "top":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v4

    .line 2594
    .local v4, "bottom":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v5

    .line 2595
    .local v5, "clamped":Z
    invoke-virtual {v0, v1, v5}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v6

    invoke-direct {p0, v3, v4, v6}, Landroid/widget/Editor;->updateCursorPosition(IIF)V

    .line 2596
    return-void
.end method
