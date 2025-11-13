.class Landroid/widget/Editor$TextActionModeCallback;
.super Landroid/view/ActionMode$Callback2;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextActionModeCallback"
.end annotation


# instance fields
.field private final greylist-max-o mAssistClickHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/MenuItem;",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHandleHeight:I

.field private final greylist-max-o mHasSelection:Z

.field private blacklist mPrevTextClassification:Landroid/view/textclassifier/TextClassification;

.field private final greylist-max-o mSelectionBounds:Landroid/graphics/RectF;

.field private final greylist-max-o mSelectionPath:Landroid/graphics/Path;

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor;I)V
    .locals 3
    .param p2, "mode"    # I

    .line 4952
    iput-object p1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 4944
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 4945
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 4948
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mAssistClickHandlers:Ljava/util/Map;

    .line 4953
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-boolean v1, p1, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    .line 4955
    if-eqz v1, :cond_3

    .line 4956
    invoke-virtual {p1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    .line 4957
    .local v1, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmStartHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v2

    if-nez v2, :cond_2

    .line 4959
    invoke-virtual {p1, v0}, Landroid/widget/Editor;->loadHandleDrawables(Z)V

    .line 4960
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$minitHandles(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 4961
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 4963
    :cond_2
    iget-object v0, p1, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 4964
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    iget-object p1, p1, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 4965
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p1

    .line 4963
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 4966
    .end local v1    # "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    goto :goto_2

    .line 4967
    :cond_3
    invoke-virtual {p1}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    .line 4968
    .local v1, "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v1, :cond_4

    .line 4969
    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->getHandle()Landroid/widget/Editor$InsertionHandleView;

    .line 4970
    iget-object p1, p1, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p1

    iput p1, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    goto :goto_2

    .line 4972
    :cond_4
    iput v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    .line 4975
    .end local v1    # "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    :goto_2
    return-void
.end method

.method private greylist-max-o addAssistMenuItem(Landroid/view/Menu;Landroid/app/RemoteAction;III)Landroid/view/MenuItem;
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "action"    # Landroid/app/RemoteAction;
    .param p3, "itemId"    # I
    .param p4, "order"    # I
    .param p5, "showAsAction"    # I

    .line 5273
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x1020041

    invoke-interface {p1, v1, p3, p4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 5274
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 5275
    .local v0, "item":Landroid/view/MenuItem;
    invoke-virtual {p2}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5276
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 5278
    :cond_0
    invoke-interface {v0, p5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5279
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->mAssistClickHandlers:Ljava/util/Map;

    .line 5280
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v2}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 5279
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5281
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmA11ySmartActions(Landroid/widget/Editor;)Landroid/widget/Editor$AccessibilitySmartActions;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/widget/Editor$AccessibilitySmartActions;->-$$Nest$maddAction(Landroid/widget/Editor$AccessibilitySmartActions;Landroid/app/RemoteAction;)V

    .line 5282
    return-object v0
.end method

.method private greylist-max-o clearAssistMenuItems(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 5286
    const/4 v0, 0x0

    .line 5287
    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5288
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 5289
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    const v3, 0x1020041

    if-ne v2, v3, :cond_0

    .line 5290
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 5291
    goto :goto_0

    .line 5293
    :cond_0
    nop

    .end local v1    # "menuItem":Landroid/view/MenuItem;
    add-int/lit8 v0, v0, 0x1

    .line 5294
    goto :goto_0

    .line 5295
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmA11ySmartActions(Landroid/widget/Editor;)Landroid/widget/Editor$AccessibilitySmartActions;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/Editor$AccessibilitySmartActions;->-$$Nest$mreset(Landroid/widget/Editor$AccessibilitySmartActions;)V

    .line 5296
    return-void
.end method

.method private greylist-max-o createAssistMenuItemPendingIntentRequestCode()I
    .locals 3

    .line 5334
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5337
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 5335
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 5336
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 5335
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5337
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 5338
    :cond_0
    const/4 v0, 0x0

    .line 5334
    :goto_0
    return v0
.end method

.method private greylist-max-o getCustomCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .line 5036
    iget-boolean v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v0, :cond_0

    .line 5037
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0

    .line 5038
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 5036
    :goto_0
    return-object v0
.end method

.method private greylist-max-o hasLegacyAssistItem(Landroid/view/textclassifier/TextClassification;)Z
    .locals 1
    .param p1, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 5300
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5301
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5301
    :cond_0
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5302
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 5300
    :goto_1
    return v0
.end method

.method private greylist-max-o onAssistMenuItemClicked(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "assistMenuItem"    # Landroid/view/MenuItem;

    .line 5306
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x1020041

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 5308
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 5309
    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetSelectionActionModeHelper(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .line 5310
    .local v0, "textClassification":Landroid/view/textclassifier/TextClassification;
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->shouldEnableAssistMenuItems()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 5315
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mAssistClickHandlers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnClickListener;

    .line 5316
    .local v2, "onClickListener":Landroid/view/View$OnClickListener;
    if-nez v2, :cond_2

    .line 5317
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 5318
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 5319
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    .line 5321
    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 5322
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->createAssistMenuItemPendingIntentRequestCode()I

    move-result v5

    .line 5320
    invoke-static {v4, v3, v5}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 5319
    invoke-static {v4}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 5325
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    if-eqz v2, :cond_3

    .line 5326
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 5327
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 5330
    :cond_3
    return v1

    .line 5312
    .end local v2    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_4
    :goto_1
    return v1
.end method

.method private greylist-max-o populateMenuWithItems(Landroid/view/Menu;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .line 5043
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmIsThemeDeviceDefault(Landroid/widget/Editor;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5044
    const v0, 0x1020318

    const v2, 0x10402dc

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    .line 5046
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080ba3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 5050
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canUndo()Z

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 5051
    const v0, 0x1020032

    const v4, 0x1040e3c

    invoke-interface {p1, v1, v0, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v4, 0x7a

    .line 5053
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 5054
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5056
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5057
    const v0, 0x1020033

    const/4 v4, 0x6

    const v5, 0x1040b6a

    invoke-interface {p1, v1, v0, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v4, 0x79

    .line 5059
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 5060
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5064
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 5065
    const v0, 0x1020020

    .line 5067
    iget-object v5, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmIsThemeDeviceDefault(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    const v6, 0x1040003

    .line 5065
    invoke-interface {p1, v1, v0, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v5, 0x78

    .line 5070
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 5071
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5074
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    const/4 v5, 0x3

    if-eqz v0, :cond_6

    .line 5076
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmIsThemeDeviceDefault(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v5

    .line 5078
    .local v0, "order":I
    :goto_1
    const v6, 0x1020021

    const v7, 0x1040001

    invoke-interface {p1, v1, v6, v0, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x63

    .line 5080
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v6

    .line 5081
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5084
    .end local v0    # "order":I
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    const/4 v6, 0x4

    if-eqz v0, :cond_8

    .line 5086
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmIsThemeDeviceDefault(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v5, v6

    :goto_2
    move v0, v5

    .line 5088
    .restart local v0    # "order":I
    const v5, 0x1020022

    const v7, 0x104000b

    invoke-interface {p1, v1, v5, v0, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v7, 0x76

    .line 5090
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    .line 5091
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5094
    .end local v0    # "order":I
    :cond_8
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canShare()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5096
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmIsThemeDeviceDefault(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    goto :goto_3

    :cond_9
    const/16 v0, 0xc

    .line 5098
    .restart local v0    # "order":I
    :goto_3
    const v3, 0x1020035

    const v5, 0x1040d45

    invoke-interface {p1, v1, v3, v0, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 5100
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5104
    .end local v0    # "order":I
    :cond_a
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canClipboard()Z

    move-result v0

    const/16 v3, 0xa

    if-eqz v0, :cond_b

    .line 5105
    const v0, 0x1020261

    const v5, 0x1040e30

    invoke-interface {p1, v1, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v5, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    .line 5107
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1080ba2

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 5110
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5114
    :cond_b
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canRequestAutofill()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5115
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 5116
    .local v0, "selected":Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 5117
    :cond_c
    const v5, 0x1020043

    const v7, 0x104001a

    invoke-interface {p1, v1, v5, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 5119
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5123
    .end local v0    # "selected":Ljava/lang/String;
    :cond_d
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPasteAsPlainText()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5125
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmIsThemeDeviceDefault(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v2, v6

    goto :goto_4

    .line 5126
    :cond_e
    nop

    :goto_4
    move v0, v2

    .line 5128
    .local v0, "order":I
    const v2, 0x1020031

    const v3, 0x1040019

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 5133
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5136
    .end local v0    # "order":I
    :cond_f
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 5138
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmIsThemeDeviceDefault(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5140
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canWebSearch()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5141
    const v0, 0x10206a3

    const/16 v2, 0xe

    const v3, 0x1040efc

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 5143
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_5

    .line 5147
    :cond_10
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 5154
    :cond_11
    :goto_5
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canAssist()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5155
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->updateAssistMenuItems(Landroid/view/Menu;)V

    .line 5160
    :cond_12
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SUPPORT_EAGLE_EYE:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canScanText()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5161
    const v0, 0x1020508

    const/16 v2, 0x9

    const v3, 0x1040bf5

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 5163
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5167
    :cond_13
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canHBDTranslate()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5168
    const v0, 0x1020336

    const/16 v2, 0x8

    const v3, 0x10405d5

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 5170
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5173
    :cond_14
    return-void
.end method

.method private greylist-max-o shouldEnableAssistMenuItems()Z
    .locals 1

    .line 5342
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 5343
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    .line 5344
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartTextShareEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5342
    :goto_0
    return v0
.end method

.method private greylist-max-o updateAssistMenuItems(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .line 5229
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    .line 5230
    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetSelectionActionModeHelper(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .line 5231
    .local v0, "textClassification":Landroid/view/textclassifier/TextClassification;
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->mPrevTextClassification:Landroid/view/textclassifier/TextClassification;

    if-ne v1, v0, :cond_0

    .line 5233
    return-void

    .line 5235
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/Editor$TextActionModeCallback;->clearAssistMenuItems(Landroid/view/Menu;)V

    .line 5236
    if-nez v0, :cond_1

    .line 5237
    return-void

    .line 5239
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->shouldEnableAssistMenuItems()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5240
    return-void

    .line 5242
    :cond_2
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 5244
    nop

    .line 5245
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/RemoteAction;

    const v5, 0x1020041

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 5244
    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/widget/Editor$TextActionModeCallback;->addAssistMenuItem(Landroid/view/Menu;Landroid/app/RemoteAction;III)Landroid/view/MenuItem;

    move-result-object v1

    .line 5247
    .local v1, "item":Landroid/view/MenuItem;
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .end local v1    # "item":Landroid/view/MenuItem;
    goto :goto_0

    .line 5248
    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/Editor$TextActionModeCallback;->hasLegacyAssistItem(Landroid/view/textclassifier/TextClassification;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5250
    nop

    .line 5252
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 5250
    const v3, 0x1020041

    invoke-interface {p1, v3, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 5253
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    .line 5254
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v1

    .line 5255
    .restart local v1    # "item":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5256
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mAssistClickHandlers:Ljava/util/Map;

    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    .line 5257
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5258
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 5259
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->createAssistMenuItemPendingIntentRequestCode()I

    move-result v5

    .line 5257
    invoke-static {v3, v4, v5}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 5256
    invoke-static {v3}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5248
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_4
    :goto_0
    nop

    .line 5261
    :goto_1
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5262
    .local v1, "count":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 5264
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/app/RemoteAction;

    const/4 v7, 0x0

    add-int/lit8 v3, v2, 0x32

    add-int/lit8 v8, v3, -0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/widget/Editor$TextActionModeCallback;->addAssistMenuItem(Landroid/view/Menu;Landroid/app/RemoteAction;III)Landroid/view/MenuItem;

    .line 5262
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5268
    .end local v2    # "i":I
    :cond_5
    iput-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mPrevTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 5269
    return-void
.end method

.method private greylist-max-o updateReplaceItem(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .line 5217
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5218
    .local v0, "canReplace":Z
    :goto_0
    const v3, 0x1020034

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 5219
    .local v4, "replaceItemExists":Z
    :goto_1
    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    .line 5220
    const/16 v5, 0x9

    const v6, 0x1040b7e

    invoke-interface {p1, v2, v3, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 5222
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    .line 5223
    :cond_2
    if-nez v0, :cond_3

    if-eqz v4, :cond_3

    .line 5224
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 5226
    :cond_3
    :goto_2
    return-void
.end method

.method private greylist-max-o updateSelectAllItem(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .line 5201
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v0

    .line 5202
    .local v0, "canSelectAll":Z
    const v1, 0x102001f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 5204
    .local v2, "selectAllItemExists":Z
    :goto_0
    iget-object v5, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmIsThemeDeviceDefault(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x7

    goto :goto_1

    .line 5205
    :cond_1
    const/16 v5, 0x8

    :goto_1
    nop

    .line 5207
    .local v5, "order":I
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 5208
    const v6, 0x104000d

    invoke-interface {p1, v4, v1, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 5210
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    .line 5211
    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 5212
    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 5214
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public whitelist onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 5349
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetSelectionActionModeHelper(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    .line 5350
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/SelectionActionModeHelper;->onSelectionAction(ILjava/lang/String;)V

    .line 5352
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performMenuItemAction(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5353
    return v1

    .line 5355
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 5356
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5357
    return v1

    .line 5359
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    const v3, 0x1020041

    if-ne v2, v3, :cond_2

    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->onAssistMenuItemClicked(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5360
    return v1

    .line 5364
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x1020035

    if-ne v2, v3, :cond_3

    instance-of v2, p1, Lcom/android/internal/view/FloatingActionMode;

    if-eqz v2, :cond_3

    .line 5365
    move-object v2, p1

    check-cast v2, Lcom/android/internal/view/FloatingActionMode;

    invoke-virtual {v2}, Lcom/android/internal/view/FloatingActionMode;->getContentRectOnScreen()Landroid/graphics/Point;

    move-result-object v2

    .line 5366
    .local v2, "touch":Landroid/graphics/Point;
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->startChooserPopupActivity(Landroid/graphics/Point;Z)V

    .line 5367
    return v1

    .line 5371
    .end local v2    # "touch":Landroid/graphics/Point;
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    return v1
.end method

.method public whitelist onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 4979
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mAssistClickHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4981
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 4982
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 4983
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 4984
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->populateMenuWithItems(Landroid/view/Menu;)V

    .line 4987
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 4988
    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4989
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 4990
    .local v2, "e":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 4991
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10403ce

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4992
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4993
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4997
    .end local v2    # "e":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v2

    .line 4998
    .local v2, "customCallback":Landroid/view/ActionMode$Callback;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4999
    invoke-interface {v2, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5004
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    .line 5005
    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 5004
    invoke-static {v0, v4}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 5007
    return v3

    .line 5011
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->canProcessText()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5012
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v4, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeMenu(Landroid/view/Menu;)V

    .line 5021
    :cond_2
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 5030
    :cond_3
    return v3

    .line 5022
    :cond_4
    :goto_0
    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmIsThemeDeviceDefault(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v4

    if-gt v4, v0, :cond_5

    .line 5023
    return v3

    .line 5025
    :cond_5
    iget-boolean v3, p0, Landroid/widget/Editor$TextActionModeCallback;->mHasSelection:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->hasTransientState()Z

    move-result v3

    if-nez v3, :cond_6

    .line 5026
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 5028
    :cond_6
    return v0
.end method

.method public whitelist onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 5377
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetSelectionActionModeHelper(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->onDestroyActionMode()V

    .line 5378
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor;->-$$Nest$fputmTextActionMode(Landroid/widget/Editor;Landroid/view/ActionMode;)V

    .line 5379
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 5380
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_0

    .line 5381
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 5384
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmPreserveSelection(Landroid/widget/Editor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5393
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    .line 5394
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 5393
    invoke-static {v1, v2}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 5398
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    .line 5399
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 5402
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 5403
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 5404
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 5405
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1, v2}, Landroid/widget/Editor;->-$$Nest$fputmToggleActionMode(Landroid/widget/Editor;Z)V

    .line 5409
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->mAssistClickHandlers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 5410
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1, v2}, Landroid/widget/Editor;->-$$Nest$fputmRequestingLinkActionMode(Landroid/widget/Editor;Z)V

    .line 5411
    return-void
.end method

.method public whitelist onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .line 5417
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 5422
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 5424
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 5427
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 5429
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 5427
    invoke-virtual {v0, v1, v2, v3}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 5430
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5431
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 5436
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v0

    .line 5438
    .local v0, "layout":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 5439
    .local v1, "line":I
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    .line 5440
    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 5439
    invoke-static {v2, v3, v4}, Landroid/widget/Editor;->-$$Nest$mclampHorizontalPosition(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I

    move-result v2

    int-to-float v2, v2

    .line 5441
    .local v2, "primaryHorizontal":F
    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 5443
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    int-to-float v4, v4

    .line 5445
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iget v6, p0, Landroid/widget/Editor$TextActionModeCallback;->mHandleHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 5441
    invoke-virtual {v3, v2, v4, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5448
    .end local v0    # "layout":Landroid/text/Layout;
    .end local v1    # "line":I
    .end local v2    # "primaryHorizontal":F
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 5449
    .local v0, "textHorizontalOffset":I
    iget-object v1, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .line 5450
    .local v1, "textVerticalOffset":I
    iget-object v2, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 5451
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v1

    add-float/2addr v3, v4

    float-to-double v3, v3

    .line 5452
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    float-to-double v4, v4

    .line 5453
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Landroid/widget/Editor$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v1

    add-float/2addr v5, v6

    float-to-double v5, v5

    .line 5454
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 5450
    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 5455
    return-void

    .line 5419
    .end local v0    # "textHorizontalOffset":I
    .end local v1    # "textVerticalOffset":I
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5420
    return-void
.end method

.method public whitelist onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 5177
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 5179
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmIsThemeDeviceDefault(Landroid/widget/Editor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5181
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateReplaceItem(Landroid/view/Menu;)V

    .line 5188
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$TextActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canAssist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5189
    invoke-direct {p0, p2}, Landroid/widget/Editor$TextActionModeCallback;->updateAssistMenuItems(Landroid/view/Menu;)V

    .line 5193
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$TextActionModeCallback;->getCustomCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 5194
    .local v0, "customCallback":Landroid/view/ActionMode$Callback;
    if-eqz v0, :cond_2

    .line 5195
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 5197
    :cond_2
    const/4 v1, 0x1

    return v1
.end method
