.class public final synthetic Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations;

.field public final synthetic f$1:Lcom/android/systemui/decor/ScreenDecorCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/decor/ScreenDecorCommand;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda17;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda17;->f$0:Lcom/android/systemui/ScreenDecorations;

    iput-object p2, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda17;->f$1:Lcom/android/systemui/decor/ScreenDecorCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda17;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda17;->f$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda17;->f$1:Lcom/android/systemui/decor/ScreenDecorCommand;

    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/decor/ScreenDecorCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object p0, p0, Lcom/android/systemui/decor/ScreenDecorCommand;->hwcDebugTransparentRegion$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/ScreenDecorHwcLayer;->debugTransparentRegion:Z

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda17;->f$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda17;->f$1:Lcom/android/systemui/decor/ScreenDecorCommand;

    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/decor/ScreenDecorCommand;->getColor()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-boolean v2, v1, Lcom/android/systemui/ScreenDecorHwcLayer;->debug:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/android/systemui/ScreenDecorHwcLayer;->color:I

    if-ne v2, p0, :cond_2

    goto :goto_0

    :cond_2
    iput p0, v1, Lcom/android/systemui/ScreenDecorHwcLayer;->color:I

    iget-object v2, v1, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Lcom/android/systemui/ScreenDecorHwcLayer;->updateColors()V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    iget-object p0, v0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$6;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/UserSettingObserver;->getValue()I

    move-result p0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
