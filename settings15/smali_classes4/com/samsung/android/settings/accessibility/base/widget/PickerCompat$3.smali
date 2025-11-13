.class public final Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$3;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$3;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$3;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int v0, v1, v2

    div-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$3;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$3;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$3;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    :cond_0
    return-void
.end method
