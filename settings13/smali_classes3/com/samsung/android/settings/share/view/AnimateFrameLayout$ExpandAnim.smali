.class Lcom/samsung/android/settings/share/view/AnimateFrameLayout$ExpandAnim;
.super Landroid/view/animation/Animation;
.source "AnimateFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/share/view/AnimateFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandAnim"
.end annotation


# instance fields
.field private final mOldHeight:I

.field private final mStep:I

.field final synthetic this$0:Lcom/samsung/android/settings/share/view/AnimateFrameLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/share/view/AnimateFrameLayout;IJ)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout$ExpandAnim;->this$0:Lcom/samsung/android/settings/share/view/AnimateFrameLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout$ExpandAnim;->mOldHeight:I

    sub-int/2addr p2, p1

    .line 85
    iput p2, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout$ExpandAnim;->mStep:I

    .line 86
    invoke-virtual {p0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 91
    iget-object p2, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout$ExpandAnim;->this$0:Lcom/samsung/android/settings/share/view/AnimateFrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout$ExpandAnim;->mOldHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout$ExpandAnim;->mStep:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 92
    iget-object p0, p0, Lcom/samsung/android/settings/share/view/AnimateFrameLayout$ExpandAnim;->this$0:Lcom/samsung/android/settings/share/view/AnimateFrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
