.class public final synthetic Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lnoticolorpicker/NotificationColorPicker;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lnoticolorpicker/NotificationColorPicker;IILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$0:Lnoticolorpicker/NotificationColorPicker;

    iput p2, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$2:I

    iput-boolean p6, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$5:Z

    iput p7, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$6:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$0:Lnoticolorpicker/NotificationColorPicker;

    iget v1, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$2:I

    iget-boolean v3, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$5:Z

    iget p0, p0, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;->f$6:I

    check-cast p1, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/MessagingGroup;->setTextColors(II)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const v5, 0x3fa66666    # 1.3f

    const v6, 0x3f4ccccd    # 0.8f

    if-ge v2, v4, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v7, 0x105033c

    invoke-static {v4, v7, v6, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    iget-object v4, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502e8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v5}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    int-to-float v4, v4

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x105033d

    invoke-static {v0, v1, v6, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    if-eqz v3, :cond_2

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    :cond_2
    return-void
.end method
