.class public final synthetic Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mBlurView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060977

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071820

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/volume/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_0

    const/16 p0, 0x6a

    goto :goto_0

    :cond_0
    const/16 p0, 0x79

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, p0}, Lcom/android/systemui/volume/util/BlurEffect;->setRealTimeBlur(Landroid/view/View;IFI)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mBlurView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060974

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f071814

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x6b

    invoke-static {v1, v2, p0, v0}, Lcom/android/systemui/volume/util/BlurEffect;->setRealTimeBlur(Landroid/view/View;IFI)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->dismiss()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mBlurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mBlurView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BlurEffect;->hideBlur(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
