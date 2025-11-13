.class public Landroid/view/accessibility/AccessibilityRecord;
.super Ljava/lang/Object;
.source "AccessibilityRecord.java"


# static fields
.field protected static final greylist-max-o DEBUG_CONCISE_TOSTRING:Z = false

.field private static final greylist-max-o GET_SOURCE_PREFETCH_FLAGS:I = 0x7

.field private static final greylist-max-o PROPERTY_CHECKED:I = 0x1

.field private static final greylist-max-o PROPERTY_ENABLED:I = 0x2

.field private static final greylist-max-o PROPERTY_FULL_SCREEN:I = 0x80

.field private static final greylist-max-o PROPERTY_IMPORTANT_FOR_ACCESSIBILITY:I = 0x200

.field private static final greylist-max-o PROPERTY_PASSWORD:I = 0x4

.field private static final greylist-max-o PROPERTY_SCROLLABLE:I = 0x100

.field private static final greylist-max-o UNDEFINED:I = -0x1


# instance fields
.field greylist-max-o mAddedCount:I

.field greylist-max-o mBeforeText:Ljava/lang/CharSequence;

.field greylist-max-o mBooleanProperties:I

.field greylist-max-o mClassName:Ljava/lang/CharSequence;

.field greylist-max-o mConnectionId:I

.field greylist-max-o mContentDescription:Ljava/lang/CharSequence;

.field greylist-max-o mCurrentItemIndex:I

.field greylist-max-o mFromIndex:I

.field greylist-max-o mItemCount:I

.field greylist-max-o mMaxScrollX:I

.field greylist-max-o mMaxScrollY:I

.field greylist-max-o mParcelableData:Landroid/os/Parcelable;

.field greylist-max-o mRemovedCount:I

.field greylist-max-o mScrollDeltaX:I

.field greylist-max-o mScrollDeltaY:I

.field greylist-max-o mScrollX:I

.field greylist-max-o mScrollY:I

.field greylist mSealed:Z

.field blacklist mSourceDisplayId:I

.field greylist mSourceNodeId:J

.field greylist-max-o mSourceWindowId:I

.field final greylist-max-o mText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mToIndex:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 84
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 85
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 86
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 87
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 88
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 89
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 91
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 92
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 93
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 94
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 96
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 97
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 98
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 100
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 101
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    .line 110
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 116
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/accessibility/AccessibilityRecord;)V
    .locals 4
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 84
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 85
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 86
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 87
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 88
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 89
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 91
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 92
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 93
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 94
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 96
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 97
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 98
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 100
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 101
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    .line 110
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 125
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 126
    return-void
.end method

.method private greylist-max-o append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # I

    .line 996
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 997
    return-void
.end method

.method private greylist-max-o append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/Object;

    .line 1001
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1002
    return-void
.end method

.method private greylist-max-o appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "propName"    # Ljava/lang/String;

    .line 1005
    const-string v0, "; "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o appendUnless(ZILjava/lang/StringBuilder;)V
    .locals 2
    .param p1, "defValue"    # Z
    .param p2, "prop"    # I
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .line 975
    invoke-direct {p0, p2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    .line 977
    .local v0, "value":Z
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityRecord;->singleBooleanPropertyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 978
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 979
    return-void
.end method

.method private greylist-max-o getBooleanProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .line 825
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist obtain()Landroid/view/accessibility/AccessibilityRecord;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 866
    new-instance v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;
    .locals 1
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 852
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    .line 853
    .local v0, "clone":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 854
    return-object v0
.end method

.method private greylist-max-o setBooleanProperty(IZ)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .line 835
    if-eqz p2, :cond_0

    .line 836
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    goto :goto_0

    .line 838
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 840
    :goto_0
    return-void
.end method

.method private static greylist-max-o singleBooleanPropertyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "prop"    # I

    .line 982
    sparse-switch p0, :sswitch_data_0

    .line 990
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 989
    :sswitch_0
    const-string v0, "ImportantForAccessibility"

    return-object v0

    .line 987
    :sswitch_1
    const-string v0, "Scrollable"

    return-object v0

    .line 986
    :sswitch_2
    const-string v0, "FullScreen"

    return-object v0

    .line 985
    :sswitch_3
    const-string v0, "Password"

    return-object v0

    .line 984
    :sswitch_4
    const-string v0, "Enabled"

    return-object v0

    .line 983
    :sswitch_5
    const-string v0, "Checked"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x80 -> :sswitch_2
        0x100 -> :sswitch_1
        0x200 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method greylist-max-o appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 944
    const-string v0, " [ ClassName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 946
    const-string v0, "Text"

    invoke-direct {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 948
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    const-string v1, "ContentDescription"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 949
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    const-string v1, "ItemCount"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 950
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    const-string v1, "CurrentItemIndex"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 952
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 953
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 954
    invoke-direct {p0, v1, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 955
    const/16 v0, 0x80

    invoke-direct {p0, v1, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 956
    const/16 v0, 0x100

    invoke-direct {p0, v1, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 958
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    const-string v1, "BeforeText"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 959
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    const-string v1, "FromIndex"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 960
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    const-string v1, "ToIndex"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 961
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    const-string v1, "ScrollX"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 962
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    const-string v1, "ScrollY"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 963
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    const-string v1, "MaxScrollX"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 964
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    const-string v1, "MaxScrollY"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 965
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    const-string v1, "ScrollDeltaX"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 966
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    const-string v1, "ScrollDeltaY"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 967
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    const-string v1, "AddedCount"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 968
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    const-string v1, "RemovedCount"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 969
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    const-string v1, "ParcelableData"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 970
    const-string v0, " ]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    return-object p1
.end method

.method greylist-max-o clear()V
    .locals 4

    .line 913
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 914
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 915
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 916
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 917
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 918
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 919
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 920
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 921
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 922
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 923
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 924
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 925
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 926
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 928
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 929
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 930
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 931
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 932
    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 933
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 934
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    .line 935
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 936
    return-void
.end method

.method greylist-max-o enforceNotSealed()V
    .locals 2

    .line 812
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    return-void

    .line 813
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o enforceSealed()V
    .locals 2

    .line 800
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    return-void

    .line 801
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAddedCount()I
    .locals 1

    .line 604
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    return v0
.end method

.method public whitelist getBeforeText()Ljava/lang/CharSequence;
    .locals 1

    .line 677
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 646
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 699
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getCurrentItemIndex()I
    .locals 1

    .line 417
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    return v0
.end method

.method public whitelist getDisplayId()I
    .locals 1

    .line 231
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    return v0
.end method

.method public whitelist getFromIndex()I
    .locals 1

    .line 441
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    return v0
.end method

.method public whitelist getItemCount()I
    .locals 1

    .line 396
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    return v0
.end method

.method public whitelist getMaxScrollX()I
    .locals 1

    .line 566
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    return v0
.end method

.method public whitelist getMaxScrollY()I
    .locals 1

    .line 585
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    return v0
.end method

.method public whitelist getParcelableData()Landroid/os/Parcelable;
    .locals 1

    .line 721
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    return-object v0
.end method

.method public whitelist getRemovedCount()I
    .locals 1

    .line 625
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    return v0
.end method

.method public whitelist getScrollDeltaX()I
    .locals 1

    .line 525
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    return v0
.end method

.method public whitelist getScrollDeltaY()I
    .locals 1

    .line 546
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    return v0
.end method

.method public whitelist getScrollX()I
    .locals 1

    .line 486
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    return v0
.end method

.method public whitelist getScrollY()I
    .locals 1

    .line 505
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    return v0
.end method

.method public whitelist getSource()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 187
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getSource(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSource(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10
    .param p1, "prefetchingStrategy"    # I

    .line 201
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceSealed()V

    .line 202
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 204
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 209
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v3, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iget v4, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move v8, p1

    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 206
    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getSourceNodeId()J
    .locals 2

    .line 745
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    return-wide v0
.end method

.method public whitelist getText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getToIndex()I
    .locals 1

    .line 466
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    return v0
.end method

.method public whitelist getWindowId()I
    .locals 1

    .line 251
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    return v0
.end method

.method greylist-max-o init(Landroid/view/accessibility/AccessibilityRecord;)V
    .locals 2
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 884
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 885
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 886
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 887
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 888
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 889
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 890
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 891
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 892
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 893
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 894
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 895
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 896
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 897
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 898
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 899
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 900
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 901
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 902
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 903
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 904
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 905
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    .line 906
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 907
    return-void
.end method

.method public whitelist isChecked()Z
    .locals 1

    .line 260
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    .line 281
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFullScreen()Z
    .locals 1

    .line 323
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isImportantForAccessibility()Z
    .locals 1

    .line 373
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isPassword()Z
    .locals 1

    .line 302
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isScrollable()Z
    .locals 1

    .line 344
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o isSealed()Z
    .locals 1

    .line 791
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    return v0
.end method

.method public whitelist recycle()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 876
    return-void
.end method

.method public whitelist semGetSourceNodeId()J
    .locals 2

    .line 757
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist setAddedCount(I)V
    .locals 0
    .param p1, "addedCount"    # I

    .line 615
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 616
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 617
    return-void
.end method

.method public whitelist setBeforeText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "beforeText"    # Ljava/lang/CharSequence;

    .line 688
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 689
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 690
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 691
    return-void
.end method

.method public whitelist setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .line 271
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 273
    return-void
.end method

.method public whitelist setClassName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/CharSequence;

    .line 657
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 658
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 659
    return-void
.end method

.method public greylist-max-o setConnectionId(I)V
    .locals 0
    .param p1, "connectionId"    # I

    .line 770
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 771
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 772
    return-void
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 710
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 711
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 712
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 713
    return-void
.end method

.method public whitelist setCurrentItemIndex(I)V
    .locals 0
    .param p1, "currentItemIndex"    # I

    .line 428
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 429
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 430
    return-void
.end method

.method public blacklist setDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 222
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    .line 223
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 292
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 293
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 294
    return-void
.end method

.method public whitelist setFromIndex(I)V
    .locals 0
    .param p1, "fromIndex"    # I

    .line 455
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 456
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 457
    return-void
.end method

.method public whitelist setFullScreen(Z)V
    .locals 1
    .param p1, "isFullScreen"    # Z

    .line 334
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 335
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 336
    return-void
.end method

.method public greylist-max-o setImportantForAccessibility(Z)V
    .locals 1
    .param p1, "importantForAccessibility"    # Z

    .line 386
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 387
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 388
    return-void
.end method

.method public whitelist setItemCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .line 407
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 408
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 409
    return-void
.end method

.method public whitelist setMaxScrollX(I)V
    .locals 0
    .param p1, "maxScrollX"    # I

    .line 575
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 576
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 577
    return-void
.end method

.method public whitelist setMaxScrollY(I)V
    .locals 0
    .param p1, "maxScrollY"    # I

    .line 594
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 595
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 596
    return-void
.end method

.method public whitelist setParcelableData(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "parcelableData"    # Landroid/os/Parcelable;

    .line 732
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 733
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 734
    return-void
.end method

.method public whitelist setPassword(Z)V
    .locals 1
    .param p1, "isPassword"    # Z

    .line 313
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 314
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 315
    return-void
.end method

.method public whitelist setRemovedCount(I)V
    .locals 0
    .param p1, "removedCount"    # I

    .line 636
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 637
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 638
    return-void
.end method

.method public whitelist setScrollDeltaX(I)V
    .locals 0
    .param p1, "scrollDeltaX"    # I

    .line 535
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 536
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 537
    return-void
.end method

.method public whitelist setScrollDeltaY(I)V
    .locals 0
    .param p1, "scrollDeltaY"    # I

    .line 556
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 557
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 558
    return-void
.end method

.method public whitelist setScrollX(I)V
    .locals 0
    .param p1, "scrollX"    # I

    .line 495
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 496
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 497
    return-void
.end method

.method public whitelist setScrollY(I)V
    .locals 0
    .param p1, "scrollY"    # I

    .line 514
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 515
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 516
    return-void
.end method

.method public whitelist setScrollable(Z)V
    .locals 1
    .param p1, "scrollable"    # Z

    .line 355
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 356
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 357
    return-void
.end method

.method public greylist-max-o setSealed(Z)V
    .locals 0
    .param p1, "sealed"    # Z

    .line 782
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 783
    return-void
.end method

.method public whitelist setSource(Landroid/view/View;)V
    .locals 1
    .param p1, "source"    # Landroid/view/View;

    .line 136
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 137
    return-void
.end method

.method public whitelist setSource(Landroid/view/View;I)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 154
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 155
    const/4 v0, 0x1

    .line 156
    .local v0, "important":Z
    const v1, 0x7fffffff

    .line 157
    .local v1, "rootViewId":I
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 158
    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v1

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v2

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 163
    :cond_0
    const/16 v2, 0x200

    invoke-direct {p0, v2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 164
    invoke-static {v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 165
    return-void
.end method

.method public greylist-max-o setSourceNodeId(J)V
    .locals 0
    .param p1, "sourceNodeId"    # J

    .line 174
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 175
    return-void
.end method

.method public whitelist setToIndex(I)V
    .locals 0
    .param p1, "toIndex"    # I

    .line 476
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 477
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 478
    return-void
.end method

.method public greylist-max-o setWindowId(I)V
    .locals 0
    .param p1, "windowId"    # I

    .line 242
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 243
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
