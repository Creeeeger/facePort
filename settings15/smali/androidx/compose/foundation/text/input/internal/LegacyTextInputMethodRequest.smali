.class public final Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;


# instance fields
.field public final baseInputConnection$delegate:Lkotlin/Lazy;

.field public final cursorAnchorInfoController:Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

.field public focusedRect:Landroid/graphics/Rect;

.field public final ics:Ljava/util/List;

.field public imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

.field public final inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

.field public legacyTextFieldState:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public onEditCommand:Lkotlin/jvm/functions/Function1;

.field public onImeActionPerformed:Lkotlin/jvm/functions/Function1;

.field public state:Landroidx/compose/ui/text/input/TextFieldValue;

.field public textFieldSelectionManager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final view:Landroid/view/View;

.field public viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->view:Landroid/view/View;

    iput-object p3, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->inputMethodManager:Landroidx/compose/foundation/text/input/internal/InputMethodManager;

    sget-object p1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$onEditCommand$1;->INSTANCE:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$onEditCommand$1;

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->onEditCommand:Lkotlin/jvm/functions/Function1;

    sget-object p1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$onImeActionPerformed$1;->INSTANCE:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$onImeActionPerformed$1;

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->onImeActionPerformed:Lkotlin/jvm/functions/Function1;

    new-instance p1, Landroidx/compose/ui/text/input/TextFieldValue;

    sget-wide v0, Landroidx/compose/ui/text/TextRange;->Zero:J

    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(JILjava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    sget-object p1, Landroidx/compose/ui/text/input/ImeOptions;->Default:Landroidx/compose/ui/text/input/ImeOptions;

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->ics:Ljava/util/List;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$baseInputConnection$2;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$baseInputConnection$2;-><init>(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->baseInputConnection$delegate:Lkotlin/Lazy;

    new-instance p1, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

    invoke-direct {p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->cursorAnchorInfoController:Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

    return-void
.end method


# virtual methods
.method public final createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v4, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    iget v6, v5, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    invoke-static {v6, v2}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    iget-boolean v15, v5, Landroidx/compose/ui/text/input/ImeOptions;->singleLine:Z

    if-eqz v7, :cond_1

    if-eqz v15, :cond_0

    :goto_0
    move v6, v11

    goto :goto_1

    :cond_0
    move v6, v14

    goto :goto_1

    :cond_1
    invoke-static {v6, v14}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    invoke-static {v6, v13}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_3

    move v6, v13

    goto :goto_1

    :cond_3
    invoke-static {v6, v11}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_4

    move v6, v9

    goto :goto_1

    :cond_4
    invoke-static {v6, v9}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_5

    move v6, v10

    goto :goto_1

    :cond_5
    invoke-static {v6, v12}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_6

    move v6, v12

    goto :goto_1

    :cond_6
    invoke-static {v6, v8}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_7

    move v6, v8

    goto :goto_1

    :cond_7
    invoke-static {v6, v10}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_0

    :goto_1
    iput v6, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    sget-object v6, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    iget-object v7, v5, Landroidx/compose/ui/text/input/ImeOptions;->hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    iput-object v6, v1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    goto :goto_3

    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v7, v10}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v7, v7, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/text/intl/Locale;

    iget-object v10, v10, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    new-array v7, v14, [Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    new-instance v7, Landroid/os/LocaleList;

    invoke-direct {v7, v6}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v7, v1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    :goto_3
    iget v6, v5, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    invoke-static {v6, v2}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v7

    const/16 v10, 0x8

    if-eqz v7, :cond_a

    :goto_4
    move v7, v2

    goto :goto_5

    :cond_a
    invoke-static {v6, v13}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_b

    iget v7, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v16, -0x80000000

    or-int v7, v7, v16

    iput v7, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_4

    :cond_b
    invoke-static {v6, v12}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_c

    move v7, v13

    goto :goto_5

    :cond_c
    invoke-static {v6, v8}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_d

    move v7, v12

    goto :goto_5

    :cond_d
    invoke-static {v6, v9}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_e

    const/16 v7, 0x11

    goto :goto_5

    :cond_e
    invoke-static {v6, v11}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_f

    const/16 v7, 0x21

    goto :goto_5

    :cond_f
    const/4 v7, 0x7

    invoke-static {v6, v7}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v16

    if-eqz v16, :cond_10

    const/16 v7, 0x81

    goto :goto_5

    :cond_10
    invoke-static {v6, v10}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_11

    const/16 v7, 0x12

    goto :goto_5

    :cond_11
    const/16 v7, 0x9

    invoke-static {v6, v7}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/16 v7, 0x2002

    :goto_5
    iput v7, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v15, :cond_12

    and-int/lit8 v15, v7, 0x1

    if-ne v15, v2, :cond_12

    const/high16 v15, 0x20000

    or-int/2addr v7, v15

    iput v7, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v7, v5, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    invoke-static {v7, v2}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_12

    iget v7, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v15, 0x40000000    # 2.0f

    or-int/2addr v7, v15

    iput v7, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_12
    iget v7, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v7, v2

    if-ne v7, v2, :cond_16

    iget v7, v5, Landroidx/compose/ui/text/input/ImeOptions;->capitalization:I

    invoke-static {v7, v2}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v15

    if-eqz v15, :cond_13

    iget v7, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v7, v7, 0x1000

    iput v7, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_6

    :cond_13
    invoke-static {v7, v13}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v15

    if-eqz v15, :cond_14

    iget v7, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v7, v7, 0x2000

    iput v7, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_6

    :cond_14
    invoke-static {v7, v12}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_15

    iget v7, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v7, v7, 0x4000

    iput v7, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_15
    :goto_6
    iget-boolean v5, v5, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    if-eqz v5, :cond_16

    iget v5, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v7, 0x8000

    or-int/2addr v5, v7

    iput v5, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_16
    sget v5, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    iget-wide v8, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    const/16 v3, 0x20

    shr-long v11, v8, v3

    long-to-int v3, v11

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    const-wide v11, 0xffffffffL

    and-long/2addr v8, v11

    long-to-int v3, v8

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {v1, v4, v14}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingSubText(Ljava/lang/CharSequence;I)V

    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v4, 0x2000000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/4 v3, 0x7

    invoke-static {v6, v3}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v4

    const-string v3, "androidx.core.view.inputmethod.EditorInfoCompat.STYLUS_HANDWRITING_ENABLED"

    if-nez v4, :cond_18

    invoke-static {v6, v10}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, v1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v4, :cond_17

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_17
    iget-object v4, v1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/view/inputmethod/SelectGesture;

    aput-object v4, v3, v14

    const-class v4, Landroid/view/inputmethod/DeleteGesture;

    aput-object v4, v3, v2

    const-class v4, Landroid/view/inputmethod/SelectRangeGesture;

    aput-object v4, v3, v13

    const-class v4, Landroid/view/inputmethod/DeleteRangeGesture;

    const/4 v6, 0x3

    aput-object v4, v3, v6

    const-class v4, Landroid/view/inputmethod/JoinOrSplitGesture;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-class v4, Landroid/view/inputmethod/InsertGesture;

    const/4 v6, 0x5

    aput-object v4, v3, v6

    const-class v4, Landroid/view/inputmethod/RemoveSpaceGesture;

    const/4 v6, 0x6

    aput-object v4, v3, v6

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/EditorInfo;->setSupportedHandwritingGestures(Ljava/util/List;)V

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Landroid/view/inputmethod/SelectGesture;

    aput-object v4, v3, v14

    const-class v4, Landroid/view/inputmethod/DeleteGesture;

    aput-object v4, v3, v2

    const-class v2, Landroid/view/inputmethod/SelectRangeGesture;

    aput-object v2, v3, v13

    const-class v2, Landroid/view/inputmethod/DeleteRangeGesture;

    const/4 v4, 0x3

    aput-object v2, v3, v4

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/EditorInfo;->setSupportedHandwritingGesturePreviews(Ljava/util/Set;)V

    goto :goto_7

    :cond_18
    iget-object v2, v1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_19

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_19
    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_7
    sget-object v1, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt;->inputMethodManagerFactory:Lkotlin/jvm/functions/Function1;

    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    iget-boolean v5, v1, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    new-instance v4, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;

    invoke-direct {v4, v0}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;-><init>(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;)V

    iget-object v6, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->legacyTextFieldState:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v7, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->textFieldSelectionManager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object v8, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    new-instance v1, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest$createInputConnection$1;ZLandroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/platform/ViewConfiguration;)V

    iget-object v0, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->ics:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid Keyboard Type"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid ImeAction"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
