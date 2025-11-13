.class public final Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBrightnessNumber:[Ljava/lang/Integer;

.field public final mColorName:[Ljava/lang/String;

.field public final mHueNumber:[Ljava/lang/Integer;

.field public final mSBTable:[[Ljava/lang/String;

.field public final mSaturationNumber:[Ljava/lang/Integer;

.field public mVirtualBrightness:F

.field public mVirtualCurrentCursorX:F

.field public mVirtualCurrentCursorY:F

.field public mVirtualCursorPosX:I

.field public mVirtualCursorPosY:I

.field public mVirtualHue:F

.field public mVirtualSaturation:F

.field public mVirtualValue:F

.field public final mVirtualViewRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorSpectrumView;


# direct methods
.method public constructor <init>(Landroidx/picker3/widget/SeslColorSpectrumView;Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSpectrumView;

    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f142b08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f142b09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f142b04

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f142b05

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f142b10

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f142b11

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f142af1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f142aeb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f142add

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f142ad2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f142ad0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f142b06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f142b00

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f142adb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    filled-new-array/range {v4 .. v17}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mColorName:[Ljava/lang/String;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v2, 0x54

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v2, 0x8a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v2, 0xab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v2, 0xbd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v2, 0xd8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v2, 0x10e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v2, 0x13e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v2, 0x156

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v3 .. v16}, [Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mHueNumber:[Ljava/lang/Integer;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x50

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v3, v5, v7, v9, v11}, [Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mSaturationNumber:[Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mBrightnessNumber:[Ljava/lang/Integer;

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f142ade

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f142aef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f142aee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f142af0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v10, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v2, v4, v6, v8, v10}, [Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f142af4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v4, v5, v6, v8, v9}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f142af3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v11, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v6, v7, v8, v9, v11}, [Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v7, v8, v3, v9, v1}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v4, v5, v6, v1}, [[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mSBTable:[[Ljava/lang/String;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualViewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static getIndex([Ljava/lang/Integer;I)I
    .locals 5

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v3, -0x1

    move v2, v3

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public final getItemDescription$1(I)Ljava/lang/StringBuilder;
    .locals 7

    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->setVirtualCursorIndexAt$1(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualHue:F

    float-to-int v0, v0

    iget v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualValue:F

    float-to-int v1, v1

    iget v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualSaturation:F

    float-to-int v2, v2

    iget v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualBrightness:F

    float-to-int v3, v3

    iget-object v4, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mSaturationNumber:[Ljava/lang/Integer;

    invoke-static {v4, v2}, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->getIndex([Ljava/lang/Integer;I)I

    move-result v4

    iget-object v5, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mBrightnessNumber:[Ljava/lang/Integer;

    invoke-static {v5, v3}, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->getIndex([Ljava/lang/Integer;I)I

    move-result v3

    const/16 v5, 0x157

    iget-object v6, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSpectrumView;

    if-lt v0, v5, :cond_0

    iget-object v0, v6, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f142b08

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mHueNumber:[Ljava/lang/Integer;

    invoke-static {v5, v0}, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->getIndex([Ljava/lang/Integer;I)I

    move-result v0

    iget-object v5, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mColorName:[Ljava/lang/String;

    aget-object v0, v5, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mSBTable:[[Ljava/lang/String;

    aget-object p0, p0, v4

    aget-object p0, p0, v3

    const-string v3, " "

    if-eqz v1, :cond_7

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v4, 0x5f

    if-lt v1, v4, :cond_2

    const/16 v4, 0x64

    if-gt v1, v4, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f142b0f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_2
    const/4 v4, 0x3

    if-gt v2, v4, :cond_5

    const/4 p0, 0x2

    if-lt v1, p0, :cond_3

    const/16 p0, 0x23

    if-gt v1, p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f142ae2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_3
    const/16 p0, 0x24

    if-lt v1, p0, :cond_4

    const/16 p0, 0x50

    if-gt v1, p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f142aed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_4
    const/16 p0, 0x51

    if-lt v1, p0, :cond_8

    const/16 p0, 0x62

    if-gt v1, p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f142af8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-le v2, v4, :cond_8

    iget-object v1, v6, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f142af3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f142acf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_2
    return-object p1
.end method

.method public final getVirtualViewAt(FF)I
    .locals 2

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSpectrumView;

    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v0, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->setVirtualCursorIndexAt$1(FF)V

    iget p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualCursorPosX:I

    iget p0, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualCursorPosY:I

    mul-int/lit8 p0, p0, 0x1e

    add-int/2addr p0, p1

    return p0
.end method

.method public final getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2

    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0x2ee

    if-ge p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPerformActionForVirtualView(II)Z
    .locals 1

    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->setVirtualCursorIndexAt$1(I)V

    iget p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualHue:F

    iget p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualSaturation:F

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSpectrumView;

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mListener:Landroidx/picker3/widget/SeslColorPicker$5;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroidx/picker3/widget/SeslColorPicker$5;->onSpectrumColorChanged(FF)V

    :cond_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTouchHelper:Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;

    iget p0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSelectedVirtualViewId:I

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->getItemDescription$1(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 12

    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->setVirtualCursorIndexAt$1(I)V

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualViewRect:Landroid/graphics/Rect;

    iget v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualCursorPosX:I

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSpectrumView;

    iget v3, v2, Landroidx/picker3/widget/SeslColorSpectrumView;->mVirtualItemWidth:I

    mul-int v4, v1, v3

    iget v5, v2, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    add-int/2addr v4, v5

    iget v6, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualCursorPosY:I

    iget v7, v2, Landroidx/picker3/widget/SeslColorSpectrumView;->mVirtualItemHeight:I

    mul-int v8, v6, v7

    int-to-float v8, v8

    const/high16 v9, 0x40900000    # 4.5f

    sub-float/2addr v8, v9

    iget v10, v2, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    int-to-float v10, v10

    add-float/2addr v8, v10

    float-to-int v8, v8

    const/4 v11, 0x1

    add-int/2addr v1, v11

    mul-int/2addr v1, v3

    add-int/2addr v1, v5

    add-int/2addr v6, v11

    mul-int/2addr v6, v7

    int-to-float v3, v6

    sub-float/2addr v3, v9

    add-float/2addr v3, v10

    float-to-int v3, v3

    invoke-virtual {v0, v4, v8, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->getItemDescription$1(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualViewRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 p0, 0x10

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    iget p0, v2, Landroidx/picker3/widget/SeslColorSpectrumView;->mSelectedVirtualViewId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x4

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p2, v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    iget-object p0, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public final setVirtualCursorIndexAt$1(FF)V
    .locals 4

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSpectrumView;

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualCurrentCursorX:F

    iget-object p1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2, v2, p1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualCurrentCursorY:F

    iget p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualCurrentCursorX:F

    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mVirtualItemWidth:I

    int-to-float v1, v1

    div-float v1, p2, v1

    float-to-int v1, v1

    iput v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualCursorPosX:I

    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mVirtualItemHeight:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualCursorPosY:I

    iget-object p1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x43960000    # 300.0f

    mul-float/2addr p2, p1

    iget p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualCurrentCursorY:F

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr p1, v3

    iget v3, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    int-to-float v3, v3

    add-float/2addr p1, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    cmpg-float v1, p2, v2

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    iput v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualHue:F

    iget p2, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSaturationProgress:I

    int-to-float p2, p2

    iput p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualBrightness:F

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    div-float/2addr p2, v0

    iput p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualValue:F

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualSaturation:F

    return-void
.end method

.method public final setVirtualCursorIndexAt$1(I)V
    .locals 3

    rem-int/lit8 v0, p1, 0x1e

    iput v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualCursorPosX:I

    div-int/lit8 p1, p1, 0x1e

    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->mVirtualCursorPosY:I

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSpectrumView;

    iget v2, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mVirtualItemWidth:I

    mul-int/2addr v0, v2

    iget v1, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mVirtualItemHeight:I

    mul-int/2addr p1, v1

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;->setVirtualCursorIndexAt$1(FF)V

    return-void
.end method
