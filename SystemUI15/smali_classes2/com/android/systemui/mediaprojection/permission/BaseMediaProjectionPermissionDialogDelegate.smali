.class public abstract Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/DialogDelegate;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final appName:Ljava/lang/String;

.field public cancelButton:Landroid/widget/TextView;

.field public final defaultSelectedMode:I

.field public dialog:Landroid/app/AlertDialog;

.field public final dialogIconDrawable:Ljava/lang/Integer;

.field public final dialogIconTint:Ljava/lang/Integer;

.field public dialogTitle:Landroid/widget/TextView;

.field public final hostUid:I

.field public final mediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

.field public screenShareModeSpinner:Landroid/widget/Spinner;

.field public final screenShareOptions:Ljava/util/List;

.field public selectedScreenShareOption:Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

.field public shouldLogCancel:Z

.field public startButton:Landroid/widget/TextView;

.field public warning:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;ILcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->screenShareOptions:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->appName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->hostUid:I

    iput-object p4, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->mediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    iput-object p5, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialogIconDrawable:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialogIconTint:Ljava/lang/Integer;

    iput p7, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->defaultSelectedMode:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->shouldLogCancel:Z

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    iget p3, p2, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->mode:I

    iget p4, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->defaultSelectedMode:I

    if-ne p3, p4, :cond_0

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->selectedScreenShareOption:Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    return-void

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;ILcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;Ljava/lang/Integer;Ljava/lang/Integer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    iget v0, v0, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->mode:I

    move v9, v0

    goto :goto_2

    :cond_2
    move/from16 v9, p7

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;-><init>(Ljava/util/List;Ljava/lang/String;ILcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    return-void
.end method


# virtual methods
.method public getOptionsViewLayoutId()Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate(Landroid/app/AlertDialog;Landroid/os/Bundle;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_1
    const p2, 0x7f0d0350

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setContentView(I)V

    const p2, 0x7f0a0a37

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialogTitle:Landroid/widget/TextView;

    const p2, 0x7f0a0d21

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->warning:Landroid/widget/TextView;

    const p2, 0x1020019

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->startButton:Landroid/widget/TextView;

    const p2, 0x102001a

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->cancelButton:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    const v0, 0x7f0a0a36

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialogIconTint:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p2

    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialogIconTint:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialogIconDrawable:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p2

    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialogIconDrawable:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->screenShareOptions:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    iget v1, v0, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->mode:I

    iget v2, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->defaultSelectedMode:I

    if-ne v1, v2, :cond_7

    iput-object v0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->selectedScreenShareOption:Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->warning:Landroid/widget/TextView;

    if-nez p1, :cond_8

    move-object p1, p2

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    move-object v0, p2

    :goto_3
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->selectedScreenShareOption:Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    iget v1, v1, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->warningText:I

    iget-object v2, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->appName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/android/systemui/mediaprojection/permission/OptionsAdapter;

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    move-object v0, p2

    :goto_4
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    move-object v0, p2

    :goto_5
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_7

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    move-object v0, p2

    :goto_6
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->screenShareOptions:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/mediaprojection/permission/OptionsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    move-object v0, p2

    :goto_8
    const v1, 0x7f0a0a38

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->screenShareModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->screenShareModeSpinner:Landroid/widget/Spinner;

    if-nez p1, :cond_f

    move-object p1, p2

    :cond_f
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->screenShareModeSpinner:Landroid/widget/Spinner;

    if-nez p1, :cond_10

    move-object p1, p2

    :cond_10
    new-instance v0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate$initScreenShareSpinner$1;

    invoke-direct {v0}, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate$initScreenShareSpinner$1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->screenShareModeSpinner:Landroid/widget/Spinner;

    if-nez p1, :cond_11

    move-object p1, p2

    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setLongClickable(Z)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->screenShareOptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    iget v2, v2, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->mode:I

    iget v3, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->defaultSelectedMode:I

    if-ne v2, v3, :cond_12

    goto :goto_a

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    const/4 v1, -0x1

    :goto_a
    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->screenShareModeSpinner:Landroid/widget/Spinner;

    if-nez p1, :cond_14

    move-object p1, p2

    :cond_14
    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->getOptionsViewLayoutId()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_15

    goto :goto_b

    :cond_15
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_16

    move-object p2, p0

    :cond_16
    const p0, 0x7f0a0893

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :goto_b
    return-void

    :cond_17
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic onCreate(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->onCreate(Landroid/app/AlertDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->screenShareOptions:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->selectedScreenShareOption:Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->warning:Landroid/widget/TextView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    if-eqz p3, :cond_1

    move-object p2, p3

    :cond_1
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->selectedScreenShareOption:Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    iget p3, p3, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->warningText:I

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->appName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method public final onStop(Landroid/app/Dialog;)V
    .locals 2

    check-cast p1, Landroid/app/AlertDialog;

    iget-boolean p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->shouldLogCancel:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->mediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    iget v0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->hostUid:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p1, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;->service:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {p1, v0}, Landroid/media/projection/IMediaProjectionManager;->notifyPermissionRequestCancelled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaProjectionMetricsLogger"

    const-string v1, "Error notifying server of projection cancelled"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->shouldLogCancel:Z

    :cond_0
    return-void
.end method

.method public final setDialogTitle(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->appName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->dialogTitle:Landroid/widget/TextView;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p0

    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
