.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->showSetDefaultLocaleDialog(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 713
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmNofiticationDialog(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const p1, 0x102000b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 p1, 0x5

    .line 715
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_0
    return-void
.end method
