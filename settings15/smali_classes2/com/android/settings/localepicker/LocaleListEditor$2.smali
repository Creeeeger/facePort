.class public final Lcom/android/settings/localepicker/LocaleListEditor$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/localepicker/LocaleListEditor;


# direct methods
.method public constructor <init>(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    iget-object p1, p1, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object p1, p1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguageLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V

    :cond_0
    return-void
.end method
