.class public final synthetic Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .locals 0

    iput p2, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/core/app/PictureInPictureModeChangedInfo;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isParentAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Landroidx/core/app/PictureInPictureModeChangedInfo;->isInPictureInPictureMode:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->dispatchPictureInPictureModeChanged(ZZ)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Landroidx/core/app/MultiWindowModeChangedInfo;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isParentAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Landroidx/core/app/MultiWindowModeChangedInfo;->isInMultiWindowMode:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->dispatchMultiWindowModeChanged(ZZ)V

    :cond_1
    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isParentAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x50

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchLowMemory(Z)V

    :cond_2
    return-void

    :pswitch_2
    check-cast p1, Landroid/content/res/Configuration;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isParentAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchConfigurationChanged(ZLandroid/content/res/Configuration;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
