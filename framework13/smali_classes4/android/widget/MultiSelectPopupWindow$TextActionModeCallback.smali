.class Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;
.super Landroid/view/ActionMode$Callback2;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextActionModeCallback"
.end annotation


# instance fields
.field private blacklist mHandleHeight:I

.field private final blacklist mSelectionBounds:Landroid/graphics/RectF;

.field private final blacklist mSelectionPath:Landroid/graphics/Path;

.field final synthetic blacklist this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/MultiSelectPopupWindow;Z)V
    .locals 2
    .param p2, "hasSelection"    # Z

    .line 188
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 183
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 184
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    .line 189
    if-eqz p2, :cond_1

    .line 190
    invoke-virtual {p1}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    .line 191
    .local v0, "selectionController":Landroid/widget/MultiSelectPopupWindow$SelectionController;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->-$$Nest$fgetmStartHandle(Landroid/widget/MultiSelectPopupWindow$SelectionController;)Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 193
    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->-$$Nest$minitDrawables(Landroid/widget/MultiSelectPopupWindow$SelectionController;)V

    .line 194
    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->-$$Nest$minitHandles(Landroid/widget/MultiSelectPopupWindow$SelectionController;)V

    .line 195
    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->hide()V

    .line 197
    :cond_0
    invoke-static {p1}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectHandleLeft(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-static {p1}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectHandleRight(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p1

    .line 197
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mHandleHeight:I

    .line 201
    .end local v0    # "selectionController":Landroid/widget/MultiSelectPopupWindow$SelectionController;
    :cond_1
    return-void
.end method

.method private blacklist populateMenuWithItems(Landroid/view/Menu;)V
    .locals 14
    .param p1, "menu"    # Landroid/view/Menu;

    .line 218
    invoke-direct {p0, p1}, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 221
    const/4 v0, 0x0

    const v1, 0x1020318

    const v2, 0x10402dc

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080ba3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 226
    const v1, 0x102041c

    const/4 v2, 0x2

    const v3, 0x1040001

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 228
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080ba5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    .line 229
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 232
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v1}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$misShareViaEnable(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 233
    const v1, 0x102041e

    const/4 v3, 0x3

    const v4, 0x1040d45

    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080bae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    .line 236
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 240
    :cond_0
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v1}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$misDictionaryEnable(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    const v1, 0x102041d

    const/4 v3, 0x4

    const v4, 0x104044b

    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 243
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080ba7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    .line 244
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 248
    :cond_1
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 249
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "text/plain"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 251
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 252
    .local v6, "i":I
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v7}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$misEmergencyMode(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 253
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 254
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v9

    .line 255
    .local v9, "info":Landroid/content/pm/ComponentInfo;
    iget-object v10, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.sec.android.app.translator"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.google.android.apps.translate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 256
    :cond_2
    const v10, 0x102041f

    add-int/lit8 v11, v6, 0x1

    .end local v6    # "i":I
    .local v11, "i":I
    add-int/lit8 v6, v6, 0x5

    .line 257
    invoke-virtual {v8, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 256
    invoke-interface {p1, v0, v10, v6, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v10

    .line 258
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x1080baf

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v6

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 259
    invoke-virtual {v10, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string v12, "android.intent.extra.PROCESS_TEXT_READONLY"

    invoke-virtual {v10, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v10

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 260
    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 259
    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v6

    .line 261
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    move v6, v11

    .line 263
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "info":Landroid/content/pm/ComponentInfo;
    .end local v11    # "i":I
    .restart local v6    # "i":I
    :cond_3
    goto :goto_0

    .line 265
    :cond_4
    return-void
.end method

.method private blacklist updateSelectAllItem(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .line 274
    const v0, 0x102041b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 275
    .local v1, "selectAllItemExists":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v4}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$misSelectAllEnable(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v4

    .line 276
    .local v4, "selectAllEnable":Z
    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 277
    const v5, 0x104000d

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1080bad

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 280
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 281
    :cond_1
    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    .line 282
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 284
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 289
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102041e

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Lcom/android/internal/view/FloatingActionMode;

    if-eqz v0, :cond_0

    .line 291
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode;->getContentRectOnScreen()Landroid/graphics/Point;

    move-result-object v0

    .line 292
    .local v0, "touch":Landroid/graphics/Point;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->startChooserPopupActivity(Landroid/graphics/Point;Z)V

    .line 293
    return v2

    .line 297
    .end local v0    # "touch":Landroid/graphics/Point;
    :cond_0
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->onMultiSelectMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public whitelist onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 208
    invoke-direct {p0, p2}, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->populateMenuWithItems(Landroid/view/Menu;)V

    .line 210
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 211
    return v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 303
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfputsTextActionMode(Landroid/view/ActionMode;)V

    .line 305
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectionController(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$fgetmSelectionController(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->hide()V

    .line 308
    :cond_0
    return-void
.end method

.method public whitelist onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .line 312
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 317
    :cond_0
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 318
    .local v0, "popupTopMargin":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105051f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 320
    .local v1, "popupBottomMargin":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v2

    .line 321
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    .line 322
    const-string v3, "MultiSelectPopupWindow"

    const-string v4, "getTextFormultiSelection() text is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 326
    :cond_1
    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 328
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 329
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 330
    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    .line 329
    invoke-virtual {v3, v4, v5, v6}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 331
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 332
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    int-to-float v5, v1

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 333
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mHandleHeight:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 337
    :cond_2
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v3

    .line 338
    .local v3, "textHorizontalOffset":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    .line 339
    .local v4, "textVerticalOffset":I
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    int-to-float v6, v3

    add-float/2addr v5, v6

    float-to-double v5, v5

    .line 340
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    int-to-float v7, v4

    add-float/2addr v6, v7

    float-to-double v6, v6

    .line 341
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    int-to-float v8, v3

    add-float/2addr v7, v8

    float-to-double v7, v7

    .line 342
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    iget-object v8, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v4

    add-float/2addr v8, v9

    float-to-double v8, v8

    .line 343
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 339
    invoke-virtual {p3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 344
    return-void

    .line 313
    .end local v0    # "popupTopMargin":I
    .end local v1    # "popupBottomMargin":I
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "textHorizontalOffset":I
    .end local v4    # "textVerticalOffset":I
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 314
    return-void
.end method

.method public whitelist onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 269
    invoke-direct {p0, p2}, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    .line 270
    const/4 v0, 0x1

    return v0
.end method
