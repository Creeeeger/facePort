.class Lcom/android/settings/localepicker/LocaleListEditor$10;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V
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

    .line 456
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$10;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 459
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$10;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$10;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alertTitle"

    const-string v2, "id"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x5

    if-lez p1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor$10;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v1}, Lcom/android/settings/localepicker/LocaleListEditor;->-$$Nest$fgetmRemoveAlertDialog(Lcom/android/settings/localepicker/LocaleListEditor;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 463
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 467
    :cond_0
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor$10;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->-$$Nest$fgetmRemoveAlertDialog(Lcom/android/settings/localepicker/LocaleListEditor;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const p1, 0x102000b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 469
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_1
    return-void
.end method
