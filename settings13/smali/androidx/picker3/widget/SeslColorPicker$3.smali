.class Landroidx/picker3/widget/SeslColorPicker$3;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker3/widget/SeslColorPicker;->initCurrentColorView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method constructor <init>(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    .line 331
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$3;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 335
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$3;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker;->access$200(Landroidx/picker3/widget/SeslColorPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
