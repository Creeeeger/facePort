.class public final Lcom/google/android/material/snackbar/BaseTransientBottomBar$17$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public _value:F

.field public final synthetic this$1:Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17$1;->this$1:Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17$1;->_value:F

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17$1;->_value:F

    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 4

    check-cast p1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    const/high16 p1, 0x40800000    # 4.0f

    mul-float/2addr p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17$1;->this$1:Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;

    iget v1, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$startWidth:I

    int-to-float v1, v1

    iget v2, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$targetWidth:I

    int-to-float v2, v2

    invoke-static {v1, v2, p1}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v1

    float-to-int v1, v1

    iget v2, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$startHeight:I

    int-to-float v2, v2

    iget v3, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$targetHeight:I

    int-to-float v3, v3

    invoke-static {v2, v3, p1}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v2, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$content:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    sget v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->TRANSITION_HEIGHT:I

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->updateContentBackground(Landroid/view/View;II)V

    iput p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17$1;->_value:F

    return-void
.end method
