.class final Landroid/widget/RemoteViews$NightModeReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NightModeReflectionAction"
.end annotation


# instance fields
.field private final blacklist mDarkValue:Ljava/lang/Object;

.field private final blacklist mLightValue:Ljava/lang/Object;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "lightValue"    # Ljava/lang/Object;
    .param p6, "darkValue"    # Ljava/lang/Object;

    .line 2443
    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->this$0:Landroid/widget/RemoteViews;

    .line 2444
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;I)V

    .line 2445
    iput-object p5, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    .line 2446
    iput-object p6, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    .line 2447
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 2
    .param p2, "in"    # Landroid/os/Parcel;

    .line 2449
    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->this$0:Landroid/widget/RemoteViews;

    .line 2450
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    .line 2451
    iget p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->type:I

    sparse-switch p1, :sswitch_data_0

    .line 2465
    new-instance p1, Landroid/widget/RemoteViews$ActionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected night mode action type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2453
    :sswitch_0
    sget-object p1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    .line 2454
    sget-object p1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    .line 2455
    goto :goto_0

    .line 2457
    :sswitch_1
    sget-object p1, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    .line 2458
    sget-object p1, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    .line 2459
    goto :goto_0

    .line 2461
    :sswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    .line 2462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    .line 2463
    nop

    .line 2467
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public blacklist getActionTag()I
    .locals 1

    .line 2496
    const/16 v0, 0x1e

    return v0
.end method

.method protected blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 2488
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2490
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2491
    .local v0, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    :goto_0
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2471
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2472
    iget v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->type:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2475
    :sswitch_0
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2476
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2477
    goto :goto_0

    .line 2479
    :sswitch_1
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mLightValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2480
    iget-object v0, p0, Landroid/widget/RemoteViews$NightModeReflectionAction;->mDarkValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2483
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method
