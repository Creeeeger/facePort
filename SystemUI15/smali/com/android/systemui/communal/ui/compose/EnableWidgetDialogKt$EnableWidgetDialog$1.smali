.class final Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dialog$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $dialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;

.field final synthetic $isEnableWidgetDialogVisible:Z

.field final synthetic $onCancel:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $onConfirm:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $positiveButtonText:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/statusbar/phone/SystemUIDialogFactory;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$isEnableWidgetDialogVisible:Z

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$dialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$positiveButtonText:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$onConfirm:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$onCancel:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$dialog$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-boolean p1, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$isEnableWidgetDialogVisible:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$dialog$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$dialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$context:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1$1;

    iget-object v3, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$positiveButtonText:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$onConfirm:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$onCancel:Lkotlin/jvm/functions/Function0;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x57fa6fca

    const/4 v6, 0x1

    invoke-direct {v4, v3, v6, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v2, 0x0

    const/16 v5, 0xe

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactoryExtKt;->create$default(Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;Landroid/content/Context;ILjava/lang/Integer;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$dialog$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$onCancel:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1$2$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1$2$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1;->$dialog$delegate:Landroidx/compose/runtime/MutableState;

    new-instance p1, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1$invoke$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt$EnableWidgetDialog$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    return-object p1
.end method
