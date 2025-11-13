.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final greylist-max-o INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field public blacklist grip:F

.field private greylist mPackedAxisBits:J

.field private greylist mPackedAxisValues:[F

.field public whitelist orientation:F

.field public blacklist palm:F

.field public whitelist pressure:F

.field public blacklist relativeX:F

.field public blacklist relativeY:F

.field public whitelist size:F

.field public whitelist toolMajor:F

.field public whitelist toolMinor:F

.field public whitelist touchMajor:F

.field public whitelist touchMinor:F

.field public whitelist x:F

.field public whitelist y:F


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 4616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4617
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .line 4625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4626
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 4627
    return-void
.end method

.method public static greylist createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3
    .param p0, "size"    # I

    .line 4632
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 4633
    .local v0, "array":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 4634
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 4633
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4636
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public whitelist clear()V
    .locals 2

    .line 4773
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4775
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4776
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4777
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 4778
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 4779
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 4780
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 4781
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 4782
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 4783
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4784
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 4785
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 4787
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    .line 4791
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->grip:F

    .line 4793
    return-void
.end method

.method public whitelist copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 6
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .line 4801
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4802
    .local v0, "bits":J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4803
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 4804
    iget-object v2, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4805
    .local v2, "otherValues":[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    .line 4806
    .local v3, "count":I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4807
    .local v4, "values":[F
    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v3, v5, :cond_1

    .line 4808
    :cond_0
    array-length v5, v2

    new-array v4, v5, [F

    .line 4809
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4811
    :cond_1
    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4814
    .end local v2    # "otherValues":[F
    .end local v3    # "count":I
    .end local v4    # "values":[F
    :cond_2
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4815
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4816
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 4817
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 4818
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 4819
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 4820
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 4821
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 4822
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4823
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 4824
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 4827
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->palm:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    .line 4830
    return-void
.end method

.method public whitelist getAxisValue(I)F
    .locals 8
    .param p1, "axis"    # I

    .line 4842
    sparse-switch p1, :sswitch_data_0

    .line 4875
    if-ltz p1, :cond_1

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_1

    .line 4878
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4879
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    .line 4880
    .local v2, "axisBit":J
    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 4881
    const/4 v4, 0x0

    return v4

    .line 4872
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    :sswitch_0
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->grip:F

    return v0

    .line 4867
    :sswitch_1
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    return v0

    .line 4864
    :sswitch_2
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    return v0

    .line 4862
    :sswitch_3
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    return v0

    .line 4860
    :sswitch_4
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return v0

    .line 4858
    :sswitch_5
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    return v0

    .line 4856
    :sswitch_6
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    return v0

    .line 4854
    :sswitch_7
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    return v0

    .line 4852
    :sswitch_8
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    return v0

    .line 4850
    :sswitch_9
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    return v0

    .line 4848
    :sswitch_a
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    return v0

    .line 4846
    :sswitch_b
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return v0

    .line 4844
    :sswitch_c
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    return v0

    .line 4883
    .restart local v0    # "bits":J
    .restart local v2    # "axisBit":J
    :cond_0
    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 4884
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    return v5

    .line 4876
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0x3 -> :sswitch_9
        0x4 -> :sswitch_8
        0x5 -> :sswitch_7
        0x6 -> :sswitch_6
        0x7 -> :sswitch_5
        0x8 -> :sswitch_4
        0x1b -> :sswitch_3
        0x1c -> :sswitch_2
        0x30 -> :sswitch_1
        0x31 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist setAxisValue(IF)V
    .locals 10
    .param p1, "axis"    # I
    .param p2, "value"    # F

    .line 4899
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 4941
    :sswitch_0
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->grip:F

    goto :goto_0

    .line 4935
    :sswitch_1
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    .line 4936
    goto/16 :goto_2

    .line 4931
    :sswitch_2
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 4932
    goto/16 :goto_2

    .line 4928
    :sswitch_3
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 4929
    goto/16 :goto_2

    .line 4925
    :sswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4926
    goto/16 :goto_2

    .line 4922
    :sswitch_5
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 4923
    goto/16 :goto_2

    .line 4919
    :sswitch_6
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 4920
    goto :goto_2

    .line 4916
    :sswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 4917
    goto :goto_2

    .line 4913
    :sswitch_8
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 4914
    goto :goto_2

    .line 4910
    :sswitch_9
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 4911
    goto :goto_2

    .line 4907
    :sswitch_a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 4908
    goto :goto_2

    .line 4904
    :sswitch_b
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4905
    goto :goto_2

    .line 4901
    :sswitch_c
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4902
    goto :goto_2

    .line 4944
    :goto_0
    if-ltz p1, :cond_4

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_4

    .line 4947
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4948
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    .line 4949
    .local v2, "axisBit":J
    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 4950
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4951
    .local v5, "values":[F
    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 4952
    if-nez v5, :cond_0

    .line 4953
    const/16 v6, 0x8

    new-array v5, v6, [F

    .line 4954
    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_1

    .line 4956
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    .line 4957
    .local v6, "count":I
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 4958
    if-eq v4, v6, :cond_2

    .line 4959
    add-int/lit8 v7, v4, 0x1

    sub-int v8, v6, v4

    invoke-static {v5, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 4963
    :cond_1
    mul-int/lit8 v7, v6, 0x2

    new-array v7, v7, [F

    .line 4964
    .local v7, "newValues":[F
    const/4 v8, 0x0

    invoke-static {v5, v8, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4965
    add-int/lit8 v8, v4, 0x1

    sub-int v9, v6, v4

    invoke-static {v5, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4967
    move-object v5, v7

    .line 4968
    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4971
    .end local v6    # "count":I
    .end local v7    # "newValues":[F
    :cond_2
    :goto_1
    or-long v6, v0, v2

    iput-wide v6, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4973
    :cond_3
    aput p2, v5, v4

    .line 4976
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    .end local v5    # "values":[F
    :goto_2
    return-void

    .line 4945
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0x3 -> :sswitch_9
        0x4 -> :sswitch_8
        0x5 -> :sswitch_7
        0x6 -> :sswitch_6
        0x7 -> :sswitch_5
        0x8 -> :sswitch_4
        0x1b -> :sswitch_3
        0x1c -> :sswitch_2
        0x30 -> :sswitch_1
        0x31 -> :sswitch_0
    .end sparse-switch
.end method
