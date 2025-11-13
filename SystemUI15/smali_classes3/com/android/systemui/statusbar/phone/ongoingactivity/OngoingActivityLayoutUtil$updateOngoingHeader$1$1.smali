.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $appNameFontSize:I

.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $nightMode:Z

.field public final synthetic $this_apply:Landroid/view/View;

.field public final synthetic $timeFontSize:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;->$this_apply:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;->$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;->$appNameFontSize:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;->$timeFontSize:I

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;->$nightMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;->$this_apply:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;->$this_apply:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0432

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;->$this_apply:Landroid/view/View;

    const v1, 0x10201fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;->$context:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;->$appNameFontSize:I

    sget-object v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0, v3, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->updateOngoingNotificationFont(Landroid/content/Context;Landroid/widget/TextView;ILandroid/graphics/Typeface;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;->$this_apply:Landroid/view/View;

    const v2, 0x102064e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;->$context:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;->$timeFontSize:I

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;->$nightMode:Z

    sget-object v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0, v3, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->updateOngoingNotificationFont(Landroid/content/Context;Landroid/widget/TextView;ILandroid/graphics/Typeface;)V

    if-eqz p0, :cond_1

    const-string p0, "#B3FAFAFF"

    goto :goto_0

    :cond_1
    const-string p0, "#B3252528"

    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView;->setTextColor(I)V

    :cond_2
    return-void
.end method
