.class Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetViewOutlinePreferredRadiusAction"
.end annotation


# instance fields
.field private final blacklist mValue:I

.field private final blacklist mValueType:I


# direct methods
.method constructor blacklist <init>(IFI)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "radius"    # F
    .param p3, "units"    # I

    .line 3673
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3674
    iput p1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->viewId:I

    .line 3675
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    .line 3676
    invoke-static {p2, p3}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    .line 3678
    return-void
.end method

.method constructor blacklist <init>(III)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "value"    # I
    .param p3, "valueType"    # I

    .line 3666
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3667
    iput p1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->viewId:I

    .line 3668
    iput p3, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    .line 3669
    iput p2, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    .line 3670
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3680
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3681
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->viewId:I

    .line 3682
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    .line 3683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    .line 3684
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 3696
    iget v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3697
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 3701
    :cond_0
    :try_start_0
    iget v1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 3719
    iget v1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    goto :goto_2

    .line 3703
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [I

    iget v4, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3706
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    :try_start_1
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3708
    .local v2, "radius":F
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3709
    nop

    .line 3710
    goto :goto_3

    .line 3708
    .end local v2    # "radius":F
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3709
    nop

    .end local v0    # "target":Landroid/view/View;
    .end local p0    # "this":Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;
    .end local p1    # "root":Landroid/view/View;
    .end local p2    # "rootParent":Landroid/view/ViewGroup;
    .end local p3    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local p4    # "colorResources":Landroid/widget/RemoteViews$ColorResources;
    throw v2

    .line 3712
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    .restart local v0    # "target":Landroid/view/View;
    .restart local p0    # "this":Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;
    .restart local p1    # "root":Landroid/view/View;
    .restart local p2    # "rootParent":Landroid/view/ViewGroup;
    .restart local p3    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local p4    # "colorResources":Landroid/widget/RemoteViews$ColorResources;
    :pswitch_1
    iget v1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    if-nez v1, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_0

    .line 3713
    .restart local v2    # "radius":F
    :goto_1
    goto :goto_3

    .line 3715
    .end local v2    # "radius":F
    :pswitch_2
    iget v1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    .line 3716
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 3715
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v1

    move v2, v1

    .line 3717
    .restart local v2    # "radius":F
    goto :goto_3

    .line 3719
    .end local v2    # "radius":F
    :goto_2
    int-to-float v1, v1

    move v2, v1

    .line 3721
    .restart local v2    # "radius":F
    :goto_3
    new-instance v1, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3724
    .end local v2    # "radius":F
    nop

    .line 3725
    return-void

    .line 3722
    :catchall_1
    move-exception v1

    .line 3723
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getActionTag()I
    .locals 1

    .line 3729
    const/16 v0, 0x1c

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3688
    iget v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3689
    iget v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3690
    iget v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3691
    return-void
.end method
