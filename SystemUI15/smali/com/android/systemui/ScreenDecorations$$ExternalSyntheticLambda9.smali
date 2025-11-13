.class public final synthetic Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda9;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/ScreenDecorations$5;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$5;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :pswitch_0
    check-cast p0, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
