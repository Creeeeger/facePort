.class public final synthetic Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

.field public final synthetic f$1:Landroid/view/Display;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;Landroid/view/Display;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    iput-object p2, p0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier$$ExternalSyntheticLambda0;->f$1:Landroid/view/Display;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    check-cast v0, Lcom/android/systemui/accessibility/Magnification$FullscreenMagnificationControllerSupplier;

    iget-object p0, p0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier$$ExternalSyntheticLambda0;->f$1:Landroid/view/Display;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/view/SurfaceControlViewHost;

    sget-boolean v2, Landroid/view/accessibility/A11yRune;->A11Y_COMMON_BOOL_SUPPORT_LARGE_COVER_SCREEN_FLIP:Z

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/android/systemui/accessibility/Magnification$FullscreenMagnificationControllerSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/accessibility/Magnification$FullscreenMagnificationControllerSupplier;->mContext:Landroid/content/Context;

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, v0, Lcom/android/systemui/accessibility/Magnification$FullscreenMagnificationControllerSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    :goto_1
    new-instance v0, Landroid/window/InputTransferToken;

    invoke-direct {v0}, Landroid/window/InputTransferToken;-><init>()V

    const-string v2, "Magnification"

    invoke-direct {v1, v3, p0, v0, v2}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    check-cast v0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;

    iget-object p0, p0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier$$ExternalSyntheticLambda0;->f$1:Landroid/view/Display;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->createWindowlessWindowMagnifier()V

    new-instance v1, Landroid/view/SurfaceControlViewHost;

    sget-boolean v2, Landroid/view/accessibility/A11yRune;->A11Y_COMMON_BOOL_SUPPORT_LARGE_COVER_SCREEN_FLIP:Z

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;->mContext:Landroid/content/Context;

    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object p0, v0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    :goto_3
    new-instance v0, Landroid/window/InputTransferToken;

    invoke-direct {v0}, Landroid/window/InputTransferToken;-><init>()V

    const-string v2, "Magnification"

    invoke-direct {v1, v3, p0, v0, v2}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
