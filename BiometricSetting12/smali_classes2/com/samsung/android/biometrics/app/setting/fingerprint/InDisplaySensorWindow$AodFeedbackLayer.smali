.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;
.super Ljava/lang/Object;
.source "InDisplaySensorWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AodFeedbackLayer"
.end annotation


# static fields
.field private static final FB_LAYER_BACKGROUND_COLOR:Ljava/lang/String; = "#CC1e1e1e"


# instance fields
.field private mRunnableClearMessage:Ljava/lang/Runnable;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;Landroid/widget/FrameLayout;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0147

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->setFailTextBackground()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mRunnableClearMessage:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mRunnableClearMessage:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method destroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$4200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mRunnableClearMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->setVisibility(I)V

    return-void
.end method

.method handleRotation(I)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getImageSize()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getMarginBottom()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getAreaHeight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$3200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$3300(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v6, -0x2

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$3400(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v6

    const-wide/high16 v7, 0x4044000000000000L    # 40.0

    invoke-static {v6, v7, v8}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->setFailTextBackground()V

    div-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    const-wide/high16 v8, 0x403a000000000000L    # 26.0

    invoke-static {v7, v4, v8, v9}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$3500(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;Landroid/util/DisplayMetrics;D)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v10, 0x800053

    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v10, v5, Landroid/graphics/Point;->y:I

    div-int/lit8 v10, v10, 0x2

    div-int/lit8 v11, v0, 0x2

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v11, v4, v8, v9}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$3800(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;Landroid/util/DisplayMetrics;D)I

    move-result v8

    add-int/2addr v10, v8

    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :pswitch_1
    const v10, 0x800055

    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v10, v5, Landroid/graphics/Point;->y:I

    div-int/lit8 v10, v10, 0x2

    div-int/lit8 v11, v0, 0x2

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v11, v4, v8, v9}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$3700(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;Landroid/util/DisplayMetrics;D)I

    move-result v8

    add-int/2addr v10, v8

    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :pswitch_2
    const/16 v10, 0x51

    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    div-int/lit8 v10, v2, 0x2

    add-int/2addr v10, v1

    div-int/lit8 v11, v0, 0x2

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v11, v4, v8, v9}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$3600(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;Landroid/util/DisplayMetrics;D)I

    move-result v8

    add-int/2addr v10, v8

    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    nop

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method setFailTextBackground()V
    .locals 7

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$2900(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v2

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v2, "#CC1e1e1e"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$3000(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v3

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    invoke-static {v3, v4, v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$3100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AodFeedbackLayer.setVisibility: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$3900(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mRunnableClearMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$4000(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->handleRotation(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$4100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->mRunnableClearMessage:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
