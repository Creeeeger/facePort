.class Lcom/android/settings/localepicker/LocaleListEditor$2;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleListEditor;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 194
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleListEditor;->-$$Nest$fgetmAdapter(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getNotificationDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 196
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p2}, Lcom/android/settings/localepicker/LocaleListEditor;->-$$Nest$fgetmAddLanguageLayout(Lcom/android/settings/localepicker/LocaleListEditor;)Landroid/widget/LinearLayout;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 197
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor$2;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->-$$Nest$fgetmAddLanguageLayout(Lcom/android/settings/localepicker/LocaleListEditor;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;)V

    :cond_0
    return-void
.end method
