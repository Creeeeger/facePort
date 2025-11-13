.class Landroid/widget/Editor$PositionListener;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# static fields
.field private static final greylist-max-o MAXIMUM_NUMBER_OF_LISTENERS:I = 0x7


# instance fields
.field private greylist-max-o mCanMove:[Z

.field private final blacklist mDelayTime:I

.field private greylist-max-o mNumberOfListeners:I

.field private greylist-max-o mPositionHasChanged:Z

.field private greylist-max-o mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

.field private greylist-max-o mPositionX:I

.field private greylist-max-o mPositionXOnScreen:I

.field private greylist-max-o mPositionY:I

.field private greylist-max-o mPositionYOnScreen:I

.field private greylist-max-o mScrollHasChanged:Z

.field final greylist-max-o mTempCoords:[I

.field private final blacklist mUpdatePosition:Ljava/lang/Runnable;

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPositionListeners(Landroid/widget/Editor$PositionListener;)[Landroid/widget/Editor$TextViewPositionListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPositionX(Landroid/widget/Editor$PositionListener;)I
    .locals 0

    iget p0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPositionY(Landroid/widget/Editor$PositionListener;)I
    .locals 0

    iget p0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    return p0
.end method

.method private constructor blacklist <init>(Landroid/widget/Editor;)V
    .locals 1

    .line 3917
    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3922
    const/4 p1, 0x7

    new-array v0, p1, [Landroid/widget/Editor$TextViewPositionListener;

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    .line 3924
    new-array p1, p1, [Z

    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    .line 3925
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 3931
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    .line 3934
    const/16 p1, 0x12c

    iput p1, p0, Landroid/widget/Editor$PositionListener;->mDelayTime:I

    .line 4073
    new-instance p1, Landroid/widget/Editor$PositionListener$1;

    invoke-direct {p1, p0}, Landroid/widget/Editor$PositionListener$1;-><init>(Landroid/widget/Editor$PositionListener;)V

    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->mUpdatePosition:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/Editor$PositionListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private greylist-max-o updatePosition()V
    .locals 6

    .line 4055
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 4057
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    aget v3, v0, v4

    iget v5, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 4059
    iput v2, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    .line 4060
    aget v0, v0, v4

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    .line 4062
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4064
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/Editor$PositionListener;->mPositionXOnScreen:I

    .line 4065
    aget v0, v0, v4

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionYOnScreen:I

    .line 4066
    return-void
.end method


# virtual methods
.method public greylist-max-o addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V
    .locals 5
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;
    .param p2, "canMove"    # Z

    .line 3938
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v0, :cond_0

    .line 3939
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 3940
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3941
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3944
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v0, -0x1

    .line 3945
    .local v0, "emptySlotIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    .line 3946
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v2, v1

    .line 3947
    .local v2, "listener":Landroid/widget/Editor$TextViewPositionListener;
    if-ne v2, p1, :cond_1

    .line 3948
    return-void

    .line 3949
    :cond_1
    if-gez v0, :cond_2

    if-nez v2, :cond_2

    .line 3950
    move v0, v1

    .line 3945
    .end local v2    # "listener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3956
    .end local v1    # "i":I
    :cond_3
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 3957
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 3958
    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 3957
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3960
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 3961
    const/4 v0, 0x0

    .line 3965
    :cond_5
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aput-object p1, v1, v0

    .line 3966
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aput-boolean p2, v1, v0

    .line 3967
    iget v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 3968
    return-void
.end method

.method public greylist-max-o getPositionX()I
    .locals 1

    .line 3992
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    return v0
.end method

.method public greylist-max-o getPositionXOnScreen()I
    .locals 1

    .line 4000
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionXOnScreen:I

    return v0
.end method

.method public greylist-max-o getPositionY()I
    .locals 1

    .line 3996
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    return v0
.end method

.method public greylist-max-o getPositionYOnScreen()I
    .locals 1

    .line 4004
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionYOnScreen:I

    return v0
.end method

.method public whitelist onPreDraw()Z
    .locals 7

    .line 4009
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 4012
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_6

    .line 4013
    iget-boolean v1, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    if-nez v1, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_5

    .line 4014
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v2, v0

    .line 4015
    .local v2, "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    if-eqz v2, :cond_5

    .line 4021
    const/4 v3, 0x0

    .line 4022
    .local v3, "isNeedToDelay":Z
    if-eqz v1, :cond_2

    instance-of v1, v2, Landroid/widget/Editor$HandleView;

    if-eqz v1, :cond_2

    .line 4023
    move-object v1, v2

    check-cast v1, Landroid/widget/Editor$HandleView;

    .line 4024
    .local v1, "currentHandle":Landroid/widget/Editor$HandleView;
    invoke-virtual {v1}, Landroid/widget/Editor$HandleView;->isDragging()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4025
    invoke-virtual {v1}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 4026
    instance-of v4, v1, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v4

    if-nez v4, :cond_1

    .line 4028
    move-object v4, v1

    check-cast v4, Landroid/widget/Editor$InsertionHandleView;

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 4030
    :cond_1
    const/4 v3, 0x1

    .line 4034
    .end local v1    # "currentHandle":Landroid/widget/Editor$HandleView;
    :cond_2
    if-eqz v3, :cond_3

    .line 4035
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mUpdatePosition:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4036
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mUpdatePosition:Ljava/lang/Runnable;

    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v4, v5, v6}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 4038
    :cond_3
    instance-of v1, v2, Landroid/widget/Editor$SelectionHandleView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v1

    if-nez v1, :cond_4

    .line 4040
    goto :goto_1

    .line 4042
    :cond_4
    iget v1, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    iget v4, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    iget-boolean v5, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    iget-boolean v6, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    invoke-interface {v2, v1, v4, v5, v6}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 4012
    .end local v2    # "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    .end local v3    # "isNeedToDelay":Z
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4050
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 4051
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o onScrollChanged()V
    .locals 1

    .line 4069
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 4070
    return-void
.end method

.method public greylist-max-o removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V
    .locals 3
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;

    .line 3972
    if-nez p1, :cond_0

    .line 3973
    return-void

    .line 3977
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    .line 3978
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    .line 3979
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 3980
    iget v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 3981
    goto :goto_1

    .line 3977
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3985
    .end local v0    # "i":I
    :cond_2
    :goto_1
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v0, :cond_3

    .line 3986
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3987
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3989
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_3
    return-void
.end method
