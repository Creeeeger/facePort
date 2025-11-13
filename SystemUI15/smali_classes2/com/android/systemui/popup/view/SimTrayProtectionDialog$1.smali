.class Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->-$$Nest$fgetmDisplayMetrics(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {v0, v1}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->-$$Nest$fputmDisplayMetrics(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;Landroid/util/DisplayMetrics;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->-$$Nest$fgetmContext(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v1}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->-$$Nest$fgetmDisplayMetrics(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->-$$Nest$fgetmDisplayMetrics(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v1}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->-$$Nest$fgetmContext(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0713df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v2}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->-$$Nest$fgetmContext(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0713e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v3}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->-$$Nest$fgetmBodyImage(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v4}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->-$$Nest$fgetmDisplayWidth(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)I

    move-result v4

    if-eq v4, v0, :cond_2

    iget-object v4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v4, v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->-$$Nest$fputmDisplayWidth(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;I)V

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v3}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->-$$Nest$fgetmBodyImage(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->-$$Nest$fgetmBodyImage(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {v1}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->-$$Nest$fgetmContext(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0713db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    invoke-static {p0}, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->-$$Nest$fgetmBodyImage(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_2
    return-void
.end method
