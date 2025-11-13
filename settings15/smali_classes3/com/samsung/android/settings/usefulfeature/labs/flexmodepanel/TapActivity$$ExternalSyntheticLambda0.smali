.class public final synthetic Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mTipsViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    const p0, 0x10bb0

    const p1, 0x10bb3

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mTipsViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    const p0, 0x10bb0

    const p1, 0x10bb2

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
