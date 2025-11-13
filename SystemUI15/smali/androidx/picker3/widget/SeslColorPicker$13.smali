.class public final Landroidx/picker3/widget/SeslColorPicker$13;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;

.field public final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroidx/picker3/widget/SeslColorPicker;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$13;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iput-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$13;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$13;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$13;->val$editText:Landroid/widget/EditText;

    iput-object p0, p1, Landroidx/picker3/widget/SeslColorPicker;->mLastFocussedEditText:Landroid/widget/EditText;

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    :cond_0
    return-void
.end method
