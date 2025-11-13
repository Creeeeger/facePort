.class public final Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1$1$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $knoxStatusBarViewControl:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;

.field public final synthetic $viewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1$1$2$1;->$viewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1$1$2$1;->$knoxStatusBarViewControl:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/statusbar/phone/knox/domain/model/KnoxStatusBarCustomTextModel;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1$1$2$1;->$viewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder$bind$1$1$2$1;->$knoxStatusBarViewControl:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;->getStatusBarView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a05d7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/knox/ui/view/KnoxStatusBarTextView;

    if-eqz p0, :cond_3

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/knox/domain/model/KnoxStatusBarCustomTextModel;->customText:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p1, Lcom/android/systemui/statusbar/phone/knox/domain/model/KnoxStatusBarCustomTextModel;->textSize:I

    int-to-float p2, p2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget p2, p1, Lcom/android/systemui/statusbar/phone/knox/domain/model/KnoxStatusBarCustomTextModel;->textStyle:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget p1, p1, Lcom/android/systemui/statusbar/phone/knox/domain/model/KnoxStatusBarCustomTextModel;->width:I

    if-lez p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 p2, 0xa

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 p1, 0x6c

    :goto_0
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Scroll width="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KnoxStatusBarTextView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
