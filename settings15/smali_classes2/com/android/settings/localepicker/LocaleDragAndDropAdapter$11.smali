.class public final Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$11;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$11;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$11;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroidx/appcompat/app/AlertDialog;

    const p1, 0x102000b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_0
    return-void
.end method
